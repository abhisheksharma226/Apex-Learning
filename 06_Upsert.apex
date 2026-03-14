public class UpsertMethod{
    public static void Main(){
        List<Account> accList = new List<Account>();

        Account accObj = new Account();
        accObj.Name = 'Abhishek Sharma';


        Account accObj1 = [Select Id, Name from Account where id = '343tgw'];
        accObj1.Phone = '424222442';

        accList.add(accObj);
        accList.add(accObj1);

        if(!accList.isEmpty){
            upsert accList;
        }
    }
}