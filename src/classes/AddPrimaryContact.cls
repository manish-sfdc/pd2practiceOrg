public class AddPrimaryContact implements Queueable{

    private Contact objContact;
    private string state; 
    
    public AddPrimaryContact(Contact record, String state) {
        this.objContact = record;
        this.state = state;
    }

    public void execute(QueueableContext context) {
        //for (Account account : accounts) {
          //account.parentId = parent;
          // perform other processing or callout
        //}
        //update accounts;
    }

}