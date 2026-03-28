@isTest
public class SumCodeTest {
    @isTest static void testCode(){
       Integer ans =  SumCode.sum('Add',5,3);
        
        //first way to test
        System.assertEquals(8,ans);
        
        //second way to test
        System.assert(8 == ans);
    }
    
    
    @isTest static void subTest(){
       Integer sub =  SumCode.sum('Sum',5,3);
        System.assertEquals(2,sub);
    }
}

//test suite is a collection of test classes. It is used to run multiple test classes together. It is useful when you want to run all the test classes together. You can create a test suite by going to the test tab in the developer console and then click on the new test suite button  and then select the test classes you want to include in the test suite. You can also run the test suite by clicking on the run button in the test suite.    