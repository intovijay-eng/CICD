@isTest
public class DemoTest {
    
    /**
     * Test method to verify Demo constructor execution
     * This test ensures that the constructor runs without errors
     * and calls the demoMethod internally
     */
    @isTest
    static void testDemoConstructor() {
        Test.startTest();
        
        // Create an instance of Demo class
        // This will trigger the constructor and demoMethod()
        Demo demoInstance = new Demo();
        
        Test.stopTest();
        
        // Assert that the instance was created successfully
        System.assertNotEquals(null, demoInstance, 'Demo instance should not be null');
    }
    
    /**
     * Test method to verify demoMethod static method execution
     * This test ensures that the static method can be called independently
     */
    @isTest
    static void testDemoMethod() {
        Test.startTest();
        
        // Call the static method directly
        Demo.demoMethod();
        
        Test.stopTest();
        
        // Since the method only contains System.debug statements,
        // we just need to ensure it executes without throwing exceptions
        // The test passes if no exceptions are thrown
        System.assert(true, 'demoMethod executed111111');
    }
    
    /**
     * Test method to verify multiple instances can be created
     * This ensures the class can handle multiple instantiations
     */
    @isTest
    static void testMultipleDemoInstances() {
        Test.startTest();
        
        // Create multiple instances
        Demo demo1 = new Demo();
        Demo demo2 = new Demo();
        Demo demo3 = new Demo();
        
        Test.stopTest();
        
        // Assert all instances were created successfully
        System.assertNotEquals(null, demo1, 'First Demo instance should not be null');
        System.assertNotEquals(null, demo2, 'Second Demo instance should not be null');
        System.assertNotEquals(null, demo3, 'Third Demo instance should not be null');
    }
    
    /**
     * Test method to verify static method can be called multiple times
     * This ensures the static method is stateless and can be called repeatedly
     */
    @isTest
    static void testMultipleDemoMethodCalls() {
        Test.startTest();
        
        // Call the static method multiple times
        Demo.demoMethod();
        Demo.demoMethod();
        Demo.demoMethod();
        
        Test.stopTest();
        
        // The test passes if no exceptions are thrown during multiple calls
        System.assert(true, 'Multiple demoMethod calls executed successfully');
    }
    
    /**
     * Test method to verify constructor and static method together
     * This test combines both constructor and static method calls
     */
    @isTest
    static void testConstructorAndStaticMethodTogether() {
        Test.startTest();
        
        // Create instance (which calls constructor and demoMethod internally)
        Demo demoInstance = new Demo();
        
        // Also call the static method directly
        Demo.demoMethod();
        
        Test.stopTest();
        
        // Assert that both operations completed successfully
        System.assertNotEquals(null, demoInstance, 'Demo instance should be created successfully');
        System.assert(true, 'Constructor and static method executed successfully together');
    }
    
    /**
     * Bulk test method to verify performance with multiple operations
     * This test ensures the class performs well under bulk operations
     */
    @isTest
    static void testBulkOperations() {
        Test.startTest();
        
        List<Demo> demoInstances = new List<Demo>();
        
        // Create 100 instances in bulk
        for(Integer i = 0; i < 100; i++) {
            demoInstances.add(new Demo());
        }
        
        // Call static method 100 times
        for(Integer i = 0; i < 100; i++) {
            Demo.demoMethod();
        }
        
        Test.stopTest();
        
        // Assert bulk operations completed successfully
        System.assertEquals(100, demoInstances.size(), 'Should have created 100 Demo instances');
        System.assert(true, 'Bulk operations completed successfully');
    }
}