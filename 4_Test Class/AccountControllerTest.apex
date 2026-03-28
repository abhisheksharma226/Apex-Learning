//@isTest annotation is used to indicate that this class is a test class and should not be included in the production code.
//@testSetup annotation is used to create test data that will be used by all test methods in the class. This method is executed once before any test method is run. 

@isTest
public class AccountControllerTest {
    
    @testSetup
    static void testData(){  
      //Create test record
        for(Integer i = 1; i <= 5; i++){
            Account acc = new Account();
            acc.Name = 'Test ' + i;
            acc.Industry = 'Energy';
            
            insert acc;
            }
        }
    
	@isTest
    public static void getAccountName(){
               
        List<Account> accList = AccountController.getAccount();
        System.assertEquals(5,accList.size());
    }
    
    @isTest
    public static void getAccountById(){
               
        Account accName = AccountController.getAccountByName('Test 1');
        System.assert(accName != null);
    }
}