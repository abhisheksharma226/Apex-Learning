//If you want to test private method, you can use @TestVisible to make it visible for testing purpose.

public class pracTesting {
    @TestVisible private static Integer sum(String op, Integer a, Integer b){
        if(op == 'Add'){
            return a + b;
        }else{
            return a - b;
        }
    }
}