//This code is used to update multiple things at once.

public class DatabaseUpdate{
    public static void main(){
        List<Account> accList = new List<Account>();

        Account accObj = new Account();
        accObj.name = 'Abhishek';
        accObj.phone = '342425';

        accList.add(accObj);

        Database.SaveResult[] dbList = Database.update(accList, false);

        for(Database.SaveResult sr : dbList){
            if(sr.isScucces){
                System.debug(sr.getId());
            }else{
                for(Database.Error err : sr.getErrors()){
                System.debug(err.getMessage());
                }
            }
        }
    }
}