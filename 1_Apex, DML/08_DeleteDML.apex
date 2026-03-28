public class DeleteDML{
    public static void Main(){
        Account accObj = [Select id, name from Account where id = '342424'];
        delete accObj;
    }
}