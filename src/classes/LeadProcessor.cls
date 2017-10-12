global  class LeadProcessor implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
       String strQuery = 'Select Id,LeadSource from lead';
       return database.getQueryLocator(strQuery);
    }

    global void execute(Database.BatchableContext bc, List<Lead> records){
        // process each batch of records
        List<Lead> listLead = new List<Lead>();
        for(Lead recLead: records){
            recLead.LeadSource ='Dreamforce' ;
            listLead.add(recLead);
        }
        if(!listLead.isEmpty())
            update listLead;
        
        
    }    

    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }    

}