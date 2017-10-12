trigger AccountAddressTrigger on Account (after delete, after insert, after undelete, after update, before delete, before insert, before update)  {
    
    if(trigger.IsBefore && (trigger.isInsert || trigger.isUpdate)){
        for(Account acc: trigger.new){
            if(acc.Match_Billing_Address__c == true)
                acc.ShippingPostalCode = acc.BillingPostalCode;   
        }
    }
}