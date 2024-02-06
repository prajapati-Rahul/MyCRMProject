<?php
if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point'); 
if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest' ) {
	global $timedate;
	$date = $timedate->to_db_date($_POST['date'],false);
	$month = date('n',strtotime($date));
	$year = date('Y', strtotime($date));
	echo json_encode(array("month"=>$month,"year"=>$year));
    exit;
}	