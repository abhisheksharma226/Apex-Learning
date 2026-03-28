//@isTest annotation is used to indicate that this class is a test class and should not be included in the production code.

//@testSetup annotation is used to create test data that will be used by all test methods in the class. This method is executed once before any test method is run.

//we can use test data factory class to create test data and we can call that method in test class to insert data. This will help us to avoid code duplication and also it will make our code more maintainable.   for example, we can create a test data factory class and insert account records in that class and then we can call that method in our test class to insert data. This will help us to avoid code duplication and also it will make our code more maintainable.

//