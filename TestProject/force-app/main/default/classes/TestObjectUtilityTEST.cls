/********************************************************************************************************************************************************
* @description       : Test class for TestObjectUtility
* @author            : Astrid Villanueva    
* @group             : Apex Systems SFDC
* @last modified on  : 02-03-2023
* @last modified by  : Astrid Villanueva 
* @since             : Astrid Villanueva - 02-03-2023 - Ticket T0004: Utility Test class creation
**********************************************************************************************************************************************************/
@isTest
private class TestObjectUtilityTEST {
    @TestSetup
    static void createTestData() {
        Account acc = TestDataFactory.createAccount(true);
    }
    @isTest 
    private static void fillTestObjectsNamesWithSameAccountFieldTEST(){
        Account testAccount=[SELECT Id FROM Account LIMIT 1];
        List<String> testObjectNames=new List<String>{'TestName1','TestName2','TestName3'};
        List<TestObject__c> testObjects=new List<TestObject__c>();
        for(String testObjectName:testObjectNames){
            testObjects.add(new TestObject__c(Account__c=testAccount.Id,Name=testObjectName));
        }
        insert testObjects;
        
        Test.startTest();
        TestObject__c testObject=new TestObject__c(Account__c=testAccount.Id,Name='TestName0');
        insert testObject;
        Test.stopTest();
        
        testObject=[SELECT TestObjectNamesWithSameAccount__c FROM TestObject__c WHERE Id =:testObject.Id];
        
        System.assertEquals(
            String.join(testObjectNames,'; '), 
            testObject.TestObjectNamesWithSameAccount__c,
            'Ticket T0003 not working'
        );
        
    }
    
}