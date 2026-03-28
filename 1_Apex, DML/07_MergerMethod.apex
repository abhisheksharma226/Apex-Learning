public class MergerMethod{
    public static void Main(){

        Account masterAcc = [Select id, name from Account where id = '3342432'];
        Account mergeAcc = [Select id, name from Account where id = '353434342'];

        merge masterAcc mergeAcc;
    }
}