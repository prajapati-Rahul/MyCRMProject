<?php 
class customLeaveHook
{
	public function generateName($bean,$events,$arguments)
	{
		$bean->name = $bean->contact."_".$bean->leave_date;
	}

	public function setFields($bean,$events,$arguments)
	{
		if(empty($bean->fetched_row['id']) || $bean->leave_date != $bean->fetched_row['leave_date']) {
			$bean->month = date('n',strtotime($bean->leave_date));
			$bean->year =date('Y', strtotime($bean->leave_date));			
		}		
	}
}
