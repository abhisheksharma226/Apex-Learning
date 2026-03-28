@isTest
public class TestDataFactory {
    public static void insertAccountForTest(){
        List<Account> accList = new List<Account>();
        
        for(Integer i=1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Test '+ i;
            accList.add(acc);            
        }
        
        insert accList;
    }
}