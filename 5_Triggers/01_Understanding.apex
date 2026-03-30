//Trigger is a piece of code that executes before or after specific data manipulation language (DML) events occur on a Salesforce object. Triggers are used to perform custom actions, such as updating related records, validating data, or integrating with external systems, when certain conditions are met.
//In this example, we have a trigger called "AccountTrigger" that executes before an account record is inserted. The trigger checks if the industry of the account is "Energy" and if so, it sets the account's rating to "Hot". This means that whenever a new account with the industry "Energy" is created, it will automatically be rated as "Hot". 

//Types of Triggers: 7 Types

// before insert -
// after insert -
// before update -
// after update -
// before delete -
// after delete
// after undelete


//1. Before Insert Trigger: 
// This type of trigger executes before a new record is inserted into the database. It allows you to perform actions such as validating data, setting default values, or modifying field values before the record is saved. For example, you can use a before insert trigger to ensure that a required field is not left blank or to automatically populate a field based on other field values.

//2.after Insert Trigger:
// This type of trigger executes after a new record has been inserted into the database. It is commonly used to perform actions that require the record's ID, such as creating related records or sending notifications. For example, you can use an after insert trigger to create a related contact record when a new account is created or to send an email notification to the account owner.

