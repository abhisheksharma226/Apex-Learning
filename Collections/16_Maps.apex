//Maps
// -Maps are used to store data in key-value pairs. It is a collection of unique keys and their corresponding values. Each key maps to a single value, and the keys must be unique within the map. Maps are useful for storing and retrieving data based on a specific key, making them efficient for lookups and data management.

//Constructors in Map

// 1. Map <K,V> 0 - Creates a new instance of the Map class. A map can hold key-value pairs of any data types K and V.

// 2. Map<K,V>(mapToCopy) - Creates a new instance of the Map class by copying the key-value pairs of the specified map.

// 3. Map<K,V>(listToCopy) - Creates a new instance of the Map class by copying the list elements. The list must contain an even number of elements, where the odd-indexed elements are treated as keys and the even-indexed elements are treated as corresponding values.


------------------------------------------------------------------------------------------------
// To create a map, use the Map keyword followed by the primitive data type name for the key and value within <> characters. For example:
public class MapPractice {
    public static void main(){
        Map<String,String> StringMap = new Map<String,String>{'India' => 'Rupee'};
        System.debug(StringMap);
    }
}


------------------------------------------------------------------------------------------------
// 1. Add key-value pair in map
        Map<String,String> StringMap = new Map<String,String>();   
        StringMap.put('India','Rupee');
        StringMap.put('USA','Dollar');
        System.debug(StringMap);


------------------------------------------------------------------------------------------------
//2. Copy one map value to another
        Map<String,String> StringMap = new Map<String,String>{'India' => 'Rupee'};
        Map<String,String> StringMap1 = new Map<String,String>(StringMap);
        System.debug(StringMap1);


------------------------------------------------------------------------------------------------
//3. Copy list value to map

        //Example 1
        List<String> StringList = new List<String>{'India','Rupee','USA','Dollar'};
        Map<String,String> StringMap = new Map<String,String>(StringList);
        System.debug(StringMap);

        //Example 2
        List<Account> accList = [SELECT id, name, phone from Account LIMIT 3];
        
        Map<Id,sObject> mapAcc = new Map<Id,sObject>(accList);
        System.debug(mapAcc);

------------------------------------------------------------------------------------------------
//Map Methods
//1. put() method is used to add a key-value pair to the map. If the key already exists, the value will be updated with the new value provided. The syntax for using the put() method is as follows:
    Map<String, String> myMap = new Map<String, String>();
    myMap.put('key1', 'value1');    
    myMap.put('key2', 'value2');
    System.debug(myMap);


------------------------------------------------------------------------------------------------
//2. USe Clear Method to clear the map value
        List<Account> accList = [SELECT id, name, phone from Account LIMIT 3];
        
        Map<Id,sObject> mapAcc = new Map<Id,sObject>(accList);
        System.debug(mapAcc);
        
        mapAcc.clear();
        System.debug(mapAcc);


------------------------------------------------------------------------------------------------
//3. Clone method 
        // is used to create a copy of the map. It returns a new map that contains the same key-value pairs as the original map. The syntax for using the clone() method is as follows:

        Map<String, String> originalMap = new Map<String, String>{'key1' => 'value1', 'key2' => 'value2'};
        Map<String, String> clonedMap = originalMap.clone();
        System.debug(clonedMap);


------------------------------------------------------------------------------------------------
// 4. ContainsKey method 
        // is used to check if a specific key exists in the map. It returns true if the key is present in the map, and false otherwise. The syntax for using the containsKey() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');
        
        Boolean ans = newIntMap.containsKey(4);
        System.debug(ans);


------------------------------------------------------------------------------------------------
//5. equals method 
        // is used to compare two maps for equality. It returns true if both maps contain the same key-value pairs, regardless of the order of the pairs. The syntax for using the equals() method is as follows:

         Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');


		Map<Integer, String> newIntMap2 = new Map<Integer, String>();
        newIntMap2.put(1,'Blue');
        newIntMap2.put(2,'Red');
        
        Boolean ans = newIntMap.equals(newIntMap2);
        System.debug(ans);


------------------------------------------------------------------------------------------------
// 6. get method 
        // is used to retrieve the value associated with a specific key in the map. It returns the value corresponding to the provided key. If the key does not exist in the map, it returns null. The syntax for using the get() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');
        
        String ans = newIntMap.get(1);
        System.debug(ans);


------------------------------------------------------------------------------------------------
// 7. getsObjectType method 
        // is used to retrieve the data type of the values stored in the map. It returns a string representing the data type of the values. The syntax for using the getSObjectType() method is as follows:
        
        Map<Id, Account> accMap = new Map<Id, Account>();

        Schema.SObjectType objType = accMap.getsObjectType();
        System.debug(objType);  
        
    
-----------------------------------------------------------------------------------------------
//8. isEmpty method 
        // is used to check if the map is empty or not. It returns true if the map contains no key-value pairs, and false otherwise. The syntax for using the isEmpty() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        
        Boolean ans = newIntMap.isEmpty();
        System.debug(ans);


------------------------------------------------------------------------------------------------
//9. mapKeys method 
        // is used to retrieve a set of all the keys present in the map. It returns a set containing all the keys in the map. The syntax for using the mapKeys() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');
        
        Set<Integer> ans = newIntMap.mapKeys();
        System.debug(ans);


------------------------------------------------------------------------------------------------
//10. putAll method 
        // is used to add all the key-value pairs from another map to the current map. If a key in the provided map already exists in the current map, its value will be updated with the value from the provided map. The syntax for using the putAll() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');

        Map<Integer, String> newIntMap2 = new Map<Integer, String>();
        newIntMap2.put(3,'Green');
        newIntMap2.put(4,'Yellow');
        
        newIntMap2.putAll(newIntMap);
        System.debug(newIntMap2);


------------------------------------------------------------------------------------------------
//11. putAll(sObject) 
        // is used to add all the fields and their corresponding values from an sObject record to the map. The keys in the map will be the field names, and the values will be the field values from the sObject record. The syntax for using the putAll(sObject) method is as follows:

        List<Account> accList = [Select id, name, phone from Account LIMIT 3];
        system.debug('accList:'+accList);
        Map<id, Account> accountMap = new Map<id, Account>();
        accountMap.putAll(accList);
        system.debug('accountMap: '+accountMap);


------------------------------------------------------------------------------------------------
//12. remove(key) method 
        // is used to remove a key-value pair from the map based on the specified key. It returns the value that was associated with the removed key. If the key does not exist in the map, it returns null. The syntax for using the remove() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');
        
        String deletedValue = newIntMap.remove(1);
        System.debug(deletedValue);
        System.debug(newIntMap);

------------------------------------------------------------------------------------------------

//13. size method 
        // is used to get the number of key-value pairs currently stored in the map. It returns an integer representing the size of the map. The syntax for using the size() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');
        
        Integer ans = newIntMap.size();
        System.debug(ans);

------------------------------------------------------------------------------------------------
//14. values method 
        // is used to retrieve a list of all the values present in the map. It returns a list containing all the values in the map. The syntax for using the values() method is as follows:

        Map<Integer, String> newIntMap = new Map<Integer, String>();
        newIntMap.put(1,'Blue');
        newIntMap.put(2,'Red');
        
        List<String> ans = newIntMap.values();
        System.debug(ans);


------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



------------------------------------------------------------------------------------------------



