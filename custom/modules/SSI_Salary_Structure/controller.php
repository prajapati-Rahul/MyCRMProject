<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class SSI_Salary_StructureController extends SugarController
{
	public function action_generateSalarySlip()
	{
		global $db;
		if(!empty($_REQUEST['uid']) || !empty($_POST['mass'])) {
            if (!empty($_REQUEST['uid'])) {
                $ssIds = explode(',', $_REQUEST['uid']);
            } 
            if(!empty($_POST['mass'])) {
                $lastSelectedIds = $_POST['mass'];
                $ssIds = array_unique(array_merge($ssIds, $lastSelectedIds));
            }
        }
        if(!empty($_REQUEST['select_entire_list']) && $_REQUEST['select_entire_list'] == 1) {
            require_once('include/MassUpdate.php');
            $mass = new MassUpdate();
            $mass->generateSearchWhere($_REQUEST['module'], $_REQUEST['current_query_by_page']);
            $ret_array = create_export_query_relate_link_patch($_REQUEST['module'], $mass->searchFields, $mass->where_clauses);
            $focus = new SSI_Salary_Structure();
            if ($focus->bean_implements('ACL') && ACLController::requireSecurityGroup($focus->module_dir, 'list')) {
                require_once('modules/SecurityGroups/SecurityGroup.php');
                global $current_user;
                $owner_where = $focus->getOwnerWhere($current_user->id);
                $group_where = SecurityGroup::getGroupWhere($focus->table_name, $focus->module_dir, $current_user->id);
                if (!empty($owner_where)) {
                    if (empty($ret_array['where'])) {
                        $ret_array['where'] = " (".  $owner_where." or ".$group_where.") ";
                    } else {
                        $ret_array['where'] .= " AND (".  $owner_where." or ".$group_where.") ";
                    }
                } else {
                    $ret_array['where'] .= ' AND '.  $group_where;
                }
            }
            /* SECURITY GROUPS CHEKS - end */
            $query = $focus->create_export_query($order_by, $ret_array['where'], $ret_array['join']);
            $result = DBManagerFactory::getInstance()->query($query, true);
            $ssIds = array();
            while ($val = DBManagerFactory::getInstance()->fetchByAssoc($result, false)) {
                array_push($ssIds, $val['id']);
            }
        }
        $ids = "'".implode("','", $ssIds)."'";
        $sql = "select id from ssi_salary_structure where status = 'Active' AND id IN ($ids)";
        $result = $db->query($sql);
        $selectedIds = array();
        if($result->num_rows > 0) {
            while($row = $db->fetchByAssoc($result)) {
                array_push($selectedIds, $row['id']);   
            }
        }
        if(!empty($selectedIds)) {
        	$_REQUEST['uid'] = implode(",",$selectedIds);
            $this->view = 'showpopup';		
        } else {
        	 $this->view = 'showerror';
        }   
	}
	public function action_massgeneratesalary()
	{
		global $db, $app_list_strings;
		if (!empty($_REQUEST['uid'])) {
			$recordIds = explode(',',$_REQUEST['uid']);
			$month = $_REQUEST['month'];
			$year = $_REQUEST['year'];
			$payment_date = $_REQUEST['payment_date'];
			$trans_ref_no = $_REQUEST['trans_ref_no'];
			$working_days = $this->getWorkingDays($month,$year); 
			foreach($recordIds as $key => $id)
			{
				$sql  = "select sl.id from ssi_salary_slip sl LEFT JOIN ssi_salary_structure_ssi_salary_slip_1_c ss  ON sl.id=ss.ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb where ss.deleted=0 and sl.deleted=0 and sl.month='".$month."' and sl.year = '".$year."' and ss.ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida='".$id."'";
				$result = $db->query($sql);
				if($result->num_rows > 0) {
					continue;
				}
				$oSS = BeanFactory::getBean('SSI_Salary_Structure',$id);
				$oSalarySlip = BeanFactory::newBean("SSI_Salary_Slip");
				$contactSql = "SELECT first_name, last_name FROM contacts where id = '".$oSS->contacts_ssi_salary_structure_1contacts_ida."' AND deleted = 0";
				$row = $db->fetchByAssoc($db->query($contactSql));
				$oSalarySlip->name = $row['first_name']." ".$row['last_name']." Salary Slip of ".$app_list_strings['month_list'][$month]." ".$year;
				$day_worked = $this->getDayWorked($month,$year,$working_days,$oSS->contacts_ssi_salary_structure_1contacts_ida);
				$oSalarySlip->sal_basic = $oSS->sal_basic;
				$oSalarySlip->sal_hra = $oSS->sal_hra;
				$oSalarySlip->sal_conv = $oSS->sal_conv;
				$oSalarySlip->sal_trans = $oSS->sal_trans;
				$oSalarySlip->sal_special = $oSS->sal_special;
				$oSalarySlip->sal_medical = $oSS->sal_medical;
				$oSalarySlip->ded_pf = $oSS->ded_pf;
				$oSalarySlip->ded_esi = $oSS->ded_esi;
				$oSalarySlip->ded_professional_tax = $oSS->ded_professional_tax;
				$oSalarySlip->ded_tds = $oSS->ded_tds;
				$oSalarySlip->month_year = $month."_".$year;
				$oSalarySlip->days_worked = $day_worked;
				$oSalarySlip->working_days= $working_days;
				$oSalarySlip->month = $month;
				$oSalarySlip->year = $year;
				$oSalarySlip->payment_date = $payment_date;
				$oSalarySlip->trans_ref_no = $trans_ref_no;
				$oSalarySlip->ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida = $id;
				$oSalarySlip->contacts_ssi_salary_slip_1contacts_ida = $oSS->contacts_ssi_salary_structure_1contacts_ida;
				$oSalarySlip->save();
			}
		}
		SugarApplication::appendErrorMessage('Successfully Salary Slip Generated!');  	
		SugarApplication::redirect('index.php?module=SSI_Salary_Structure&action=ListView');
	}

	public function getWorkingDays($month,$year)
	{
		global $db;
		$workdays = array();
		$type = CAL_GREGORIAN;
		$day_count = cal_days_in_month($type, $month, $year); 
		$count = 0;
		$holidays = 0;
		for ($i = 1; $i <= $day_count; $i++) {
		        $date = $year.'/'.$month.'/'.$i; 
		        $get_name = date('l', strtotime($date)); 
		        $day_name = substr($get_name, 0, 3); 
		        if($day_name != 'Sun' && $day_name != 'Sat'){
		            $count++;
		        }
		}
		$sql = "select day from ssi_holiday where deleted=0 AND month={$month} AND year={$year} AND day != 0 AND day != 6";
		$res = $db->query($sql);
		$holidays = $res->num_rows;
		$count = $count-$holidays;
		return $count;
	}

	public function getDayWorked($month,$year,$workingDays,$contactId) 
	{
		global $db;
		$count = 0;
		$sql = "select id,type from ssi_leaves where deleted=0 AND month=".$month." AND year=".$year." AND contact_id_c='".$contactId."' AND status='Approve'";
		$res = $db->query($sql);
		if($res->num_rows > 0) 
		{
			while ($row = $db->fetchByAssoc($res)) {
				$type = $row['type'];
				if($type == 'Full') {
					$count += 1;
				} else {
					$count += 0.5;
				}
			}
		}
		$dayworked = $workingDays - $count;
		return $dayworked;
	}
}

