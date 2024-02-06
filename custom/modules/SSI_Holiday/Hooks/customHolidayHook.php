<?php 
class customHolidayHook
{
	public function setFields($bean,$events,$arguments)
	{
		if(empty($bean->fetched_row['id']) || $bean->holiday_date != $bean->fetched_row['holiday_date']) {
			$bean->month = date('n',strtotime($bean->holiday_date));
			$bean->day =date('w', strtotime($bean->holiday_date));
			$bean->year =date('Y', strtotime($bean->holiday_date));			
		}		
	}
}