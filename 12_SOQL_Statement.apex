public class SOQL {
    public static void Main(){
        
        //SOQL - Salesforce Object Query Langugage
        List<Account> a = [Select id, name from Account where name='Edge Communications'];
        System.debug('account : ' + a);
        
        ----------------------------------------------------------------------------------------------
        //Total Account
        List<Account> accList = [Select Id, Name from Account ];
        System.debug('Accounts : ' + accList);
        
        ----------------------------------------------------------------------------------------------

        //Count
        Integer i = [Select COUNT() From Account];
        System.debug('Total Account are : ' + i);
        
        ----------------------------------------------------------------------------------------------
        //Limit
        List<Account> accListLimit = [Select Id, Name from Account Limit 1 ];
        System.debug('Accounts : ' + accListLimit);


        ----------------------------------------------------------------------------------------------
        //Utilize Output
        List<Account> accList = [Select id, Name from Account where name='Edge Communications'];
        
        Integer getId = accList.id;
        System.debug('Id : ' + getId);
        
        String name = accList.Name;
        System.debug('Name : ' + name);


        ----------------------------------------------------------------------------------------------
        //Parent Child Realtionship
        //1. Child to parent
        //2. Parent to child
        
        //1. Child to parent query (Standard Object)
        //Contact(Child) -> Account(Parent)
        List<Contact> conList = [Select id, name, AccountId, Account.Name, Account.Phone from Contact where id = '003dL00001qHqrpQAC'];

        //1.1 Child to parent query (Custom Object)
        List<Football_Player_c> playerList = [Select Id, Name, Football_Clubs_c, Football_Clubs_r.Name, Football_Clubs_r.Country
                                                from Football_Player_c Where Id 'a0n5g000000UptvAAC'];


        //2. Parent to Child (Standard Object)
        List<Account> accList = [Select id, name, (Select id, name from Contacts) from Account where id = '003dL00001qHqrpQAC']; 
        //NOTE - Contacts instead of Contact... because in this we use this once

        //2.1 Parent to Child (Custom Object)
        List<Football_Clubs_c> clubList = [Select Id, Name, (Select Id, Name From Football_Players_r)
                                            From Football_Clubs_c Where Id = 'a005g000001059jAAA'];
        
        ----------------------------------------------------------------------------------------------

        //View Deleted from recycle bin
                List<Football_Player_c> playerList = [Select Id, name from Football_Player_c Where isDeleted = true ALL ROWS];
                    System.debug('playerList: '+playerList);
    
    }

     ----------------------------------------------------------------------------------------------
        //Dynamic SOQL
        public static void getSOQLData(String objectName){
            List<sObject> dynamicDataList = Database.query('Select id, name from ' + objectName + ' Limit 1');
            System.debug('dynamicDataList' + dynamicDataList);
        }

        
}