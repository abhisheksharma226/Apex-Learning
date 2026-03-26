NOTE - 
    * List can store duplicate values. List are Ordered.
    * Set can not store duplicate value. Set are Unordered.
    * Map is a collection of key value pairs whre each unique key maps to a single value

    - Constructors in List
        1. Add into the List
        2. Copy One list Values to Anohter List
        3. Copy One Set values to Anohter List

-------------------------------------------------------------------------------------------------------------

public class ListDemo {
    public static void main(){

        //1. add in the list
        List<String> colors = new List<String>();
        colors.add('red');
        colors.add('Pink');
        colors.add('Green');
        
        System.debug(colors);

-------------------------------------------------------------------------------------------------------------
        //2. Copy one list value to another
        List<String> colors1 = new List<String>(colors);
        System.debug(colors1);
        colors1.add('Yellow');
        System.debug(colors1);

-------------------------------------------------------------------------------------------------------------

        //3. Copy set values to list 
        Set<String> colorsSet = new Set<String>();
        colorsSet.add('red');
        colorsSet.add('Pink');
        colorsSet.add('Green');
        colorsSet.add('red');
        
        System.debug(colorsSet);
        
        List<String> colors1 = new List<String>(colorsSet);
        System.debug(colors1);

-------------------------------------------------------------------------------------------------------------

        //Integer List
        List<Integer> intList = new List<Integer>();
        intList.add(10);
        intList.add(20);
        
        System.debug(intList);

-------------------------------------------------------------------------------------------------------------

        //Add Element in a Specific Index
        List<Integer> intList1 = new List<Integer>();
        intList1.add(10);
        intList1.add(20);
        intList1.add(1,15); // 1 is here index and 15 is value

-------------------------------------------------------------------------------------------------------------

        //Copy One list to antohter List using addall 
        List<Integer> intList2 = new List<Integer>();
 		intList2.addAll(intList);
        System.debug(intList2);

-------------------------------------------------------------------------------------------------------------

        //Copy One set to another set using addall
        Set<Integer> intList2 = new Set<Integer>();
 		intList2.addAll(intList);
        System.debug(intList2); 

-------------------------------------------------------------------------------------------------------------

        //Clear the list
        intList2.clear();
        System.debug(intList2);
    
-------------------------------------------------------------------------------------------------------------
    
        //Clone the list 
        List<Integer> intListClone = intList2.clone();
        System.debug(intListClone);
    
-------------------------------------------------------------------------------------------------------------

        //Check whether element contains or not - Return true or false
        Boolean ans = intList.contains(105);
        System.debug(ans);
-------------------------------------------------------------------------------------------------------------

        //Check the two lists are equal or not
        List<Integer> intList = new List<Integer>();
        intList.add(10);
        intList.add(20);
        intList.add(15);
        
        List<Integer> intList1 = new List<Integer>();
        intList1.add(10);
        intList1.add(20);
        intList1.add(15);
        
        //System.debug(intList);
        
        Boolean ans = intList.equals(intList1);
        System.debug(ans);
-------------------------------------------------------------------------------------------------------------
    // Get values from index using get method
        Integer i = intList.get(0);
        System.debug(i);

-------------------------------------------------------------------------------------------------------------
    // Get Index of the elements
     Integer i = intList.indexOf(20);
     System.debug(i);

-------------------------------------------------------------------------------------------------------------
    // Check whether the list is empty or not
        Boolean ans = intList.isEmpty();
        System.debug(ans);


-------------------------------------------------------------------------------------------------------------
    // Remove an Specific index element
        intList.remove(0);
        System.debug(intList);

-------------------------------------------------------------------------------------------------------------
    // Set value at Specific index
        intList.set(0,55);
        System.debug(intList);


-------------------------------------------------------------------------------------------------------------
    // Find the Length of the List
        Integer len = intList.size();
        System.debug(len);


-------------------------------------------------------------------------------------------------------------
    // Sort the list
        intList.sort();
        System.debug(intList);


-------------------------------------------------------------------------------------------------------------















    
    }
}