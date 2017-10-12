trigger ClosedOpportunityTrigger on Opportunity  (after delete, after insert, after undelete, after update, before delete, before insert, before update) {

    if(trigger.IsAfter && (trigger.isInsert || trigger.isUpdate)){
        List<task> Listtask = new List<task>();
        
        for(Opportunity opty: trigger.new){
            if(opty.StageName == 'Closed Won'){
                task objTask = new task();
                objTask.whatId = Opty.Id;
                objTask.subject = 'Follow Up Test Task';
                Listtask.add(objTask);
                }   
        }
        if(!Listtask.isEmpty()){
            dataBase.insert(Listtask);
        }
        
    }

}