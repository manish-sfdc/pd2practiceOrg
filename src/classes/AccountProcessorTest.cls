@isTest
public class AccountProcessorTest{
    private static final string  sname ='Manish';
    @TestSetup static void testData(){
    
        Account objAccount = new Account(Name=sName,
        BillingStreet='testBillingStreet',
        BillingCity='testBillingCity',
        BillingState='testBillingState',
        BillingCountry='testBillingCountry',
        BillingPostalCode='testPostcode',
        ShippingStreet='testShippingStreet ',
        ShippingCity='testShippingCity',
        ShippingState='testShippingState',
        ShippingCountry='ShippingCountry',
        ShippingPostalCode='testPostCode');
        insert objAccount;
        
    
    }
    
    testMethod static void countContactsTest(){
        Test.startTest() ;
        account objAccount = [select Id from account limit 1];
        list<contact> listContact = new list<contact>();
        for(integer i=0; i<100;i++){
            listContact.add(new Contact(FirstName=sname, LastName=sname, accountId=objAccount.Id));
        }
        insert listContact   ;
        list<Id> accId = new list<Id>();
        accId.add(objAccount.Id);
        //AccountProcessor acc = new AccountProcessor();
        AccountProcessor.countContacts(accId);
        Test.stopTest();
    
    }
}