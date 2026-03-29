public class AccountTrigerHandlerr {

    //This method is responsible for updating the website field of the account records before they are inserted into the database. It takes a list of new account records as input and iterates through them to check if the industry is not null and the number of employees is greater than 5. If both conditions are met, it sets the website field to 'https://www.google.com'.
    public static void updateAccountWebsite(List<Account> newAccList ){
        for(Account acc : newAccList){
        System.debug('Industry : ' + acc.Industry);
        System.debug('Employee : ' + acc.NumberOfEmployees);
        
        if(acc.Industry != null && acc.NumberOfEmployees > 5){
            acc.Website = 'https://www.google.com';
        }
    }
    }


    //This method is responsible for creating related contact records for the new accounts that are inserted. It takes a list of new account records as input and iterates through them to create a contact record for each account. The contact's AccountId is set to the Id of the corresponding account, and the LastName of the contact is set to the Name of the account. Finally, it inserts the list of contacts into the database.
    public static void createRelatedContact(List<Account> newAccountList){
     	System.debug('After Trigger : '+ newAccountList);
        
        List<Contact> conList = new List<Contact>();
        
        //Iterate through the list of new accounts and create a contact for each account
        for(Account acc : newAccountList){
            Contact conObj = new Contact();
            conObj.AccountId = acc.Id;
            conObj.LastName = acc.Name;
            
            conList.add(conObj);
        }
        
        //Insert the list of contacts if it's not empty
        if(!conList.isEmpty()){
            insert conList;
        }
    }

    
}