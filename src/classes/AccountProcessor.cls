public class AccountProcessor{
	
   
    @future 
    public static void countContacts(List<Id> ListaccId){
        list<Account> listAccount = new list<Account>();
        for( Account acc: [Select Id, (select Id from contacts) from Account where Id=:ListaccId]){
            acc.Number_of_Contacts__c = acc.contacts.size();
            listAccount.add(acc);
        } 
        if(!listAccount.isEmpty()){
            database.update(listAccount, false);
        }   
    }

}