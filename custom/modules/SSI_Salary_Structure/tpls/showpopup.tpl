<div class="updateinformation">
    <form action='index.php?module=SSI_Salary_Structure&action=massgeneratesalary' name='updateinformation' method='POST' id='updateinformation'>
        <fieldset style="margin-top: 15px !important;">
            <table width="100%" border = "0">        
                <tr>
                    <td width="20%">
                        <label for="month">Month</label>
                    </td>
                    <td width="70%">
                        <select id="month" name="month">
                            {$MONTH_DOM}
                        </select>
                    </td>
                </tr>
        </table>
        </fieldset>
        <fieldset style="margin-top: 15px !important;">
            <table width="100%" border = "0">        
                <tr>
                    <td width="20%">
                        <label for="year">Year</label>
                    </td>
                    <td width="70%">
                        <select id="year" name="year">
                            {$YEAR_DOM}
                        </select>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset style="margin-top: 15px !important;">
            <table width="100%" border = "0">        
                <tr>
                    <td width="20%">
                        <label for="payment_date">Payment Date</label>
                    </td>
                    <td width="70%">
                        <span class="dateTime">
                            <input class="date_input" autocomplete="off" type="text" name="payment_date" id="payment_date" value="" title="" tabindex="0" size="11" maxlength="10">
                            <button type="button" id="payment_date_trigger" class="btn btn-danger" onclick="return false;"><span class="suitepicon suitepicon-module-calendar" alt="Enter Date"></span></button>
                        </span>
                        <script type="text/javascript">
                            Calendar.setup ({ldelim}
                            inputField : "payment_date",
                            form : "updateinformation",
                            ifFormat : "%Y-%m-%d %H:%M",
                            daFormat : "%Y-%m-%d %H:%M",
                            button : "payment_date_trigger",
                            singleClick : true,
                            dateStr : "",
                            startWeekday: '1',
                            step : 1,
                            weekNumbers:false
                            {rdelim}
                            );
                        </script>
                    </td>
                </tr>
            </table>
        </fieldset>   
         <fieldset style="margin-top: 15px !important;">
            <table width="100%" border = "0">        
                <tr>
                    <td width="20%">
                        <label for="trans_ref_no">Transaction Ref No</label>
                    </td>
                    <td width="70%">
                        <input type='text' id='trans_ref_no' name='trans_ref_no' value=''>
                    </td>
                </tr>
            </table>
        </fieldset>     
         <fieldset style="margin-top: 15px !important;">
            <table width="100%" border = "0">        
                <tr>
                    <td width="20%"></td>
                    <td width="70%">
                       <button type="submit"  class="btn btn-default">Update</button>
                    </td>
                </tr>
            </table>
        </fieldset>
        <input type='hidden' id='uid' name='uid' value='{$uid}'>        
    </form>
</div>
