//This code is used to insert multiple data at once.

public class DatabaseClassMethod{
    public static void Main(){

        List<Account> accList = new List<Account>();

        Account accObj1 = new Account();
        accObj1.name = 'Abhishek';

        Account accObj2 = new Account();
        accObj2.name = 'Sharma';

        accList.add(accObj1);
        accList.add(accObj2);

        Database.SaveResult[] dbList = Database.insert(accList, false);


        for(Database.SaveResult sr = dbList){
            if(sr.isScucces()){
                System.debug('Successfully inserted: ' + sr.getId());
            }else{
                for(Database.Error err = sr.getErrors()){
                    System.debug(err.getStatusCode() + ':' + err.getMessage());
                    System.debug(err.getField());
                }
            }
        }

    }
}