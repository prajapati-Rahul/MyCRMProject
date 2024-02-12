<?php
 /*
  * We add the method name to the $job_strings array.
  * This is the method that jobs for this scheduler will call.
  */
 $job_strings[] = 'Send Birthday Email Scheduler';

 /**
  * Example scheduled job to change any 'Planned' meetings older than a month
  * to 'Not Held'.
  * @return bool
  */
 function SendBirthdaymailScheduler(){
   //Get the cutoff date for which meetings will be considered
      $cutOff = new DateTime('now - 1 month');
      $cutOff = $cutOff->format('Y-m-d H:i:s');

      //Get an instance of the meetings bean for querying
   //see the Working With Beans chapter.
   $bean = BeanFactory::getBean('Contacts');

   //Get the list of meetings older than the cutoff that are marked as Planned
   // $query = "meetings.date_start < '$cutOff' AND meetings.status = 'Planned'";
   // $meetings = $bean->get_full_list('',$query);

   // foreach($meetings as $meeting){
   //   //Mark each meeting as Not Held
   //   $meeting->status = 'Not Held';
   //   //Save the meeting changes
   //   $meeting->save();
   // }
   //Signify we have successfully ran
   return true;
}