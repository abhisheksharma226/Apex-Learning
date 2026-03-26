// What is Set in Apex :
// A set is an unordered collection of elements that do not contain any duplicates.
// - To declare a set, use the Set keyword followed by the primitive data type name within <> characters. For example:

// Syntax :-
// Set<String> myStringSet = new Set<String>();

// Constructors:
// 1. Set <T> 0 - Creates a new instance of the Set class. A set can hold elements of any data type T.
// 2. Set<T>(setToCopy) - Creates a new instance of the Set class by copying the elements of the specified set.
// 3. Set<T>(listToCopy) - Creates a new instance of the Set class by copying the list elements.

-------------------------------------------------------------------------------------------------------------
//1. 
//Only Store Unique value, did not store duplicate value
Set<String> Colors = new Set<String>(); //empty set of string

Colors.add('Red');
Colors.add('Red');
Colors.add('Green');

System.debug(Colors);

-------------------------------------------------------------------------------------------------------------

//We can also add like this, and set is ordered so the value will be stored as sorted.
Set<String> Colors = new Set<String>{'2','1','1'};

System.debug(Colors);

-------------------------------------------------------------------------------------------------------------
//2.
//set 1
Set<String> Color1 = new Set<String>{'Red','Green','Pink'};

//Copy set 1 to 2
Set<String> color2 = new Set<String>(Color1);
System.debug(color2);


-------------------------------------------------------------------------------------------------------------
//3. 
        //List
        List<String> color = new List<String>{'red','pink','pink'};
        System.debug('List Color is : ' + color);
        
        //Copy list to Set
        Set<String> setColor = new Set<String>(color);
        System.debug('Set Color is : ' + setColor);


-------------------------------------------------------------------------------------------------------------
        //For adding the value using 'add'
        Set<String> color = new Set<String>();
        
        color.add('Red');
        color.add('Pink');
        
        System.debug(color);

-------------------------------------------------------------------------------------------------------------
        //addall keyword is used to store the list value into set
        
        //List
        List<Integer> listInt = new List<Integer>();
        listInt.add(1);
        listInt.add(2);
        
        System.debug('List : ' + listInt);
        
        //Copy the list value into set using addall keyword
        Set<Integer> setInt = new Set<Integer>();
        setInt.addall(listInt);
        
        System.debug('Set : ' + setInt );


-------------------------------------------------------------------------------------------------------------
//Clear the value of set using Clear()

        Set<Integer> setInt = new Set<Integer>();
        setInt.addall(listInt);
        
        System.debug('Set : ' + setInt );
        
        setInt.clear();
        System.debug('Set : ' + setInt );

-------------------------------------------------------------------------------------------------------------
    //Copy the list value into set using addall keyword
        Set<Integer> setInt = new Set<Integer>();
        setInt.addall(listInt);
        
        System.debug('Set : ' + setInt );
        
        setInt.clear();
        System.debug('Set : ' + setInt );


-------------------------------------------------------------------------------------------------------------

        Set<Integer> intSet = new Set<Integer>{1,2,6,4};
        System.debug(intSet);
        
        //Clone the intSet to new set
        Set<Integer> newIntSet = intSet.clone();
        System.debug(newIntSet);

-------------------------------------------------------------------------------------------------------------
        //Use Contain Method
                Set<Integer> intSet = new Set<Integer>{1,2,6,4};
				Boolean bool = intSet.contains(64);
                System.debug(bool);


-------------------------------------------------------------------------------------------------------------
//Use containsAll method to check if the one set all value is present in another list or not
        List<Integer> newInt = new List<Integer>{1,2,3,4};
            
        Set<Integer> newSet = new Set<Integer>{1,2,4,3};
        Boolean ans = newSet.containsAll(newInt);
        System.debug(ans);


-------------------------------------------------------------------------------------------------------------
//Use containsAll method to check if the one set all value is present in another set  or not
        Set<Integer> newInt = new Set<Integer>{1,2,3,4};
            
        Set<Integer> newSet = new Set<Integer>{1,2,4,3};
        Boolean ans = newSet.containsAll(newInt);
        System.debug(ans);


-------------------------------------------------------------------------------------------------------------
//Use equals method to check if the one set all value is present in another set  or not
        Set<Integer> newInt = new Set<Integer>{1,2,3,4};
            
        Set<Integer> newSet = new Set<Integer>{1,2,4,3};
        Boolean ans = newSet.euqals(newInt);
        System.debug(ans);


-------------------------------------------------------------------------------------------------------------
    //Use isEmpty method to check the set is empty or not
        Set<Integer> newInt = new Set<Integer>{1,2,3,4};
            
        Boolean ans = newInt.isEmpty();
        System.debug(ans);

-------------------------------------------------------------------------------------------------------------
//Use remove method to remove the value from set
        Set<Integer> newInt = new Set<Integer>{1,2,3,4};
            
        Boolean ans = newInt.remove(2);
        System.debug(ans);
        System.debug(newInt);


-------------------------------------------------------------------------------------------------------------
//Use size method to get the size of the set
        Set<Integer> newInt = new Set<Integer>{1,2,3,4};
            
        Integer ans = newInt.size();
        System.debug(ans);


-------------------------------------------------------------------------------------------------------------
//use removeall method to remove the list value from set
        List<Integer> newInt = new List<Integer>{1,2};
            
        Set<Integer> newSet = new Set<Integer>{1,2,4,3};
        
        newSet.removeAll(newInt);
        System.debug(newSet); 

-------------------------------------------------------------------------------------------------------------
//Use retainAll method to retain the Set value from set
        Set<Integer> newInt = new Set<Integer>{1,2};
            
        Set<Integer> newSet = new Set<Integer>{1,2,4,3};
        
        newSet.retainAll(newInt);
        System.debug(newSet);


-------------------------------------------------------------------------------------------------------------
//Use toArray method to convert the set value into list
        Set<Integer> newInt = new Set<Integer>{1,2,3,4};
            
        List<Integer> newList = newInt.toArray();
        System.debug(newList);

