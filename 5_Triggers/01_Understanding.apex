//Trigger is a piece of code that executes before or after specific data manipulation language (DML) events occur on a Salesforce object. Triggers are used to perform custom actions, such as updating related records, validating data, or integrating with external systems, when certain conditions are met.
//In this example, we have a trigger called "AccountTrigger" that executes before an account record is inserted. The trigger checks if the industry of the account is "Energy" and if so, it sets the account's rating to "Hot". This means that whenever a new account with the industry "Energy" is created, it will automatically be rated as "Hot". 

//Types of Triggers: 7 Types

// before insert -
// before update -
// before delete -
// after insert -
// after update -
// after delete
// after undelete
