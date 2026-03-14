public class InsertUpdate{
    public static void Main(){
        Account accObj = new Account();
        accObj.Name = 'Abhishek';

        insert accObj;

        System.debug(accObj.id);

        Account accToUpdate = [Select id, Name, Phone From Account where id = accObj.id];
        accToUpdate.Phone = '153423';

        update accToUpdate;
    }
}