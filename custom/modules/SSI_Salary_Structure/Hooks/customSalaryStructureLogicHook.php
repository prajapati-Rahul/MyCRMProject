<?php
class customSalaryStructureHook 
{
	public function updateStatus($bean, $events, $arguments)
	{
		global $db;
		if((empty($bean->fetched_row['id']) || $bean->fetched_row['status'] != $bean->status) && ($bean->status == 'Active')) {
			if (!empty($bean->contacts_ssi_salary_structure_1contacts_ida) && !is_object($bean->contacts_ssi_salary_structure_1contacts_ida)) {
				$contactID = $bean->contacts_ssi_salary_structure_1contacts_ida;
			} elseif (!empty($_REQUEST['contacts_ssi_salary_structure_1contacts_ida'])) {
				$contactID = $_REQUEST['contacts_ssi_salary_structure_1contacts_ida'];
			}
			$oContact = BeanFactory::getBean('Contacts',$contactID);
			if($oContact->load_relationship('contacts_ssi_salary_structure_1'))
			{
				$salaryStructureIDs = $oContact->contacts_ssi_salary_structure_1->get();
				foreach ($salaryStructureIDs as $key => $id) {
					if($bean->id != $id)
					{
						$ossBean = BeanFactory::getBean('SSI_Salary_Structure',$id);
						if(!empty($ossBean))
						{
							$ossBean->status = 'Inactive';
							$ossBean->processed = true;
							$ossBean->save();
						}
					}

				}
			} 
		}
	}

	public function calculateSalary($bean,$events,$arguments) 
	{

		$totalGrossEarning = $bean->sal_basic+$bean->sal_hra+$bean->sal_conv+$bean->sal_trans+$bean->sal_special+$bean->sal_medical;
		$totalGrossDeduction = $bean->ded_pf+$bean->ded_esi+$bean->ded_professional_tax+$bean->ded_tds;
		$bean->sal_gross_earning = $totalGrossEarning;
		$bean->sal_gross_deduction = $totalGrossDeduction;
		$bean->sal_net_amount = $totalGrossEarning-$totalGrossDeduction;
	}
}