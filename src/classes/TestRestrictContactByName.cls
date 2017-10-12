@isTest 
public class TestRestrictContactByName{
    private static final string sFirstName = 'Manish';
    private static final string sLastName = 'Singh';
    @TestSetup static void createTestData(){
        Contact con = new Contact(FirstName=sFirstName, LastName=sLastName);
        insert con;
    }
    @isTest static void runTest(){
        Test.Starttest();
        Contact con = [select lastname from contact where firstName = :sFirstName];
        con.LastName ='INVALIDNAME';
        Database.SaveResult result= DataBase.update(con, false);
        contact con1 = new  Contact(FirstName=sFirstName,LastName='INVALIDNAME' );
        Database.SaveResult result2= Database.insert(con1,false);
        Test.StopTest();
    }
    

}