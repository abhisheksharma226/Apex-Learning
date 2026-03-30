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



    //This method is responsible for updating the phone field of the account records before they are updated in the database. It takes a map of old account records and a list of new account records as input. It iterates through the new account records and checks if the industry field has been updated by comparing it with the corresponding old account record. If the industry field has been updated, it sets the phone field to '9999999999'. If the industry field has not been updated, it sets the phone field to '8888888888'.
    public static void UpdateAccountField(Map<Id, Account> oldAccountMap, List<Account> newAccList){
        System.debug('Before Update trigger called');
        // New values
    	for(Account acc : newAccList){
        	System.debug('New Industry: ' + acc.Industry);
    	}

   		 // Old values
    	for(Account oldAcc : oldAccountMap.values()){
        	System.debug('Old Industry: ' + oldAcc.Industry);
   		 }
        
        
        //To check field is updated or not
        for(Account acc : newAccList){
            if(oldAccountMap != null && acc.Industry != oldAccountMap.get(acc.Id).Industry){
                acc.Phone = '9999999999';
            }else{
                acc.Phone = '8888888888';
            }
        }
          
    }











    //This method is responsible for preventing the deletion of account records that have a phone number. It takes a list of old account records as input and iterates through them to check if the phone field is not null. If the phone field is not null, it adds an error message to the account record, which prevents it from being deleted.
    public static void preventAccountDeletion(List<Account> oldAccountList){
        for(Account acc : oldAccountList){
            if(acc.Phone != null){
                acc.addError('Account cannot be deleted');
            }
        }
     }




     //This method is responsible for updating the Restored__c field of the account records that are undeleted. It takes a list of new account records as input and iterates through them to create a new list of account records with the Restored__c field set to true. Finally, it updates the list of accounts in the database.
     public static void updateUndeletedAccount(List<Account> newAccList){
        System.debug('Undeleted Account : ' + newAccList);
        
        List<Account> accList = new List<Account>();
        
        for(Account acc : newAccList){
            Account accObj = new Account();
            accObj.Id = acc.Id;
            accObj.Restored__c = true;   
            accList.add(accObj);
        }
        
        if(!accList.isEmpty()){
            update accList;
        }
    }

}