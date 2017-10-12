@isTest
public class LeadProcessorTest{

    @TestSetup 
    static void createTestData(){
        List<Lead> lstLead = new List<Lead>();
        for (integer i=0;i<200;i++){
            lead reclead = new lead();
            reclead.LeadSource = 'dummy';
            reclead.LastName ='Manish';
            recLead.company = 'Test';
            lstLead.add(reclead);        
        }
        if(!lstLead.isEmpty()){
            insert lstLead;
        }
    }
    testMethod static void testBatch(){
        LeadProcessor myBatchObject = new LeadProcessor(); 
        
        Test.startTest();
        Id batchId = Database.executeBatch(myBatchObject);
        Test.stopTest(); 
    }

}