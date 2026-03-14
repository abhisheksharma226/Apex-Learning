public class 03_Update_DmlMethod{
    public static void Main(){

        List<Football__c> playerList = new List<Football__c>();
        Football__c playerObj = [Select id, Name, Goals__c from Football__c where Id = '532423535q3'];

         playerObj.Goals__c = 600;
         playerList.add(playerObj);


        if(!playerList.isEmpty){
         update playerObj;
        }
    }
}