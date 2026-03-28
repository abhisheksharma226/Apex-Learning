public class AccountController {
    public static List<Account> getAccount(){
        return [Select id, Name, Phone from Account];
    }
    
    public static Account getAccountByName(String accName){
        return [Select id, Name, Phone from Account Where Name =: accName Limit 1];
    }
}