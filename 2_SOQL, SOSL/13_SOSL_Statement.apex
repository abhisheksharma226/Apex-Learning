public class SOSLDemoClass {
    public static void main(){
        ----------------------------------------------------------------------------------------------
        //Dynamic SOQL
        //Search in all 
        List<List<sObject>> SoslClass = [FIND 'com' IN ALL FIELDS RETURNING Account (id, name, phone)];
        System.debug(SoslClass);

        ----------------------------------------------------------------------------------------------
        //Search in name
        List<List<sObject>> SoslClass = [FIND 'com' IN Name FIELDS RETURNING Account (id, name, phone)];
        System.debug(SoslClass);

        ----------------------------------------------------------------------------------------------
        //Search in multiple objects
        List<List<sObject>> SoslClass = [FIND 'com' IN Name FIELDS RETURNING Account (id, name, phone), Contact(id, name, phone)];
        System.debug(SoslClass);

        ----------------------------------------------------------------------------------------------
        //Search multiple keywords objects
        List<List<sObject>> SoslClass = [FIND '"com" OR "Abhishek"' IN Name FIELDS RETURNING Account (id, name, phone), Contact(id, name, phone)];
        System.debug(SoslClass);

        ----------------------------------------------------------------------------------------------
        //Wild Cards
        1. * 
        2. ?

        1. * - it will show all result where this put after keyword
           List<List<sObject>> SoslClass = [FIND 'Abhi*' IN Name FIELDS RETURNING Account (id, name, phone)];
           System.debug(SoslClass); 

        2. ? - it will use for only single value search
            List<List<sObject>> SoslClass = [FIND 'Abhi?hek' IN Name FIELDS RETURNING Account (id, name, phone)];
            System.debug(SoslClass); 
    }
}