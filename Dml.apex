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
        }
        
    }
}