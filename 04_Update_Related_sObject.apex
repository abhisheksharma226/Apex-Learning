//METHOD 1

public class UpdateRelatedsObject{
    public static void Main(){
        Contact con = [Select id, AccountId, Account.Industry from Contact where id = '33ft635r'];

        con.Phone = '13532324';
        con.Account.Industry = 'Technology';

        update con;
        update con.Account;
    }
}
 

 --------------------------------------------------------------------------------------------------------------

// METHOD 2

public class ApexDmlMethodDemo {

    public static void updateRelatedRecord(){
        
        List<Account> accoutList = new List<Account>();  //empty list of Account type
        List<Contact> contactList = new List<Contact>(); //empty list of Contact type
        
        //Mention the id of contact record which u want to update 
        Contact con = [ Select id,AccountId,Account.Industry from Contact where id = '0035g00000e9DTyAAM'];
        
        con.Phone = '1326562';
        con.Account.Industry = 'Technology';
        
        contactList.add(con); //adding contact details in list of contact type which need to be updated
        accoutList.add(con.Account); //adding account details in list of account type which need to be updated
        
        if(!contactList.isEmpty()){
            update contactList; //updating contact record value
            update accoutList; // updated related account record value of the contact
        }
        
    }

}