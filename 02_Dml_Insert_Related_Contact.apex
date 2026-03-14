public class DmlMethod {
    public static void main(){
		insertDml();        
    }
    
    public static void insertDml(){
        List<Account> accountList = new List<Account>();
        
        Account accObj = new Account();
        accObj.Name = 'Abhishek Sharma';
        	
        accountList.add(accObj);
        
        if(!accountList.isEmpty()){
            insert accObj;
            System.debug('accountList:' + accountList[0].Id);

            insertRealtedContact(accountList[0].Id);
        }
    }

    public static void insertRealtedContact(String AccountIds){

        Contact con = new Contact(
            FirstName = 'Abhishek',
            LastName = 'Sharma',
            Phone = '4938498308',
            AccountId = AccountIds
        );

        insert con;
    }
}