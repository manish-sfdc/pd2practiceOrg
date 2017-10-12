public class RandomContactFactory{
    private static final string firstName = 'Manish ';
    public static list<contact> generateRandomContacts(integer count, string lastName){
        list<contact> listContact = new list<contact>();
        for(integer i=0;i<count;i++){
            listContact.add(new Contact(FirstName=firstName+i, LastName = lastName));
        }
        return listContact;
    }

}