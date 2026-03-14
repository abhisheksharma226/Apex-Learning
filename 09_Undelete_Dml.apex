public class UndeleteDML{
    public static void Main(){
        Account acc = [Select id, name from Account where id = '43324322' ALL ROWS];

        undelete acc;
    }
}    