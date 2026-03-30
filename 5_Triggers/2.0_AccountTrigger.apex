//good practice is to have one trigger per object and then call the handler class to perform the logic. This helps in maintaining the code and also makes it easier to debug and test.

//Trigger.new - to access the new records that are being inserted or updated
//Trigger.isInsert - to check if the trigger is executing on insert operation
//Trigger.isBefore - to check if the trigger is executing before the DML operation  

trigger AccountTrigger on Account (before insert, after insert, before update) {
    

    //For Insert
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            AccountTrigerHandlerr.updateAccountWebsite(Trigger.new);
        }else if(Trigger.isAfter){
            AccountTrigerHandlerr.createRelatedContact(Trigger.new);
        }
    }


    //For update
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            AccountTrigerHandlerr.UpdateAccountField(Trigger.oldMap, Trigger.new);
        }
    }


    //For delete
     if(Trigger.isDelete){
        if(Trigger.isBefore){
            AccountTrigerHandlerr.preventAccountDeletion(Trigger.old);
        }
    }


    //For undelete Or Restore
    if(Trigger.isUndelete){
        AccountTrigerHandlerr.updateUndeletedAccount(Trigger.new);
    }
    
    
    
    
}