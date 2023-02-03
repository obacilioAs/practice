/********************************************************************************************************************************************************
* @description       : Utility class for TestObjectTrigger
* @author            : Astrid Villanueva
* @group             : Apex Systems SFDC
* @last modified on  : 02-03-2023
* @last modified by  : Astrid Villanueva
* @since             : Astrid Villanueva - 02-03-2023 - Ticket T0003: Utility class creation
**********************************************************************************************************************************************************/
public class TestObjectUtility {
    public static void fillTestObjectsNamesWithSameAccountField(List<TestObject__c> newRecords){
        Set<Id> accIds = new Set<Id>();
        Map<Id, List<TestObject__c>> testObjectsByAccountMap = new Map<Id, List<TestObject__c>>();
        Map<Id, String> testObjectNamesAtTheMomentPerAccount = new Map<Id, String>(); 
        for(TestObject__c testObject : newRecords){
            accIds.add(testObject.Account__c);
        }
        List<TestObject__c> allTestObjectsList = [
            SELECT Id, Name, Account__c  
            FROM TestObject__c 
            WHERE Account__c IN: accIds
        ];
        for(TestObject__c testObject : [SELECT Id, Name, Account__c FROM TestObject__c WHERE Account__c IN: accIds ORDER BY Name ASC]){
            if(!testObjectsByAccountMap.containsKey(testObject.Account__c)){
                testObjectsByAccountMap.put(testObject.Account__c, new List<TestObject__c>());
            } 
            testObjectsByAccountMap.get(testObject.Account__c).add(testObject);   
        }
        for(Id accId : testObjectsByAccountMap.keySet()){
            List<String> testObjectNamesCurrentAccount=new List<String>();
            for(TestObject__c testObject:testObjectsByAccountMap.get(accId)){
                testObjectNamesCurrentAccount.add(testObject.Name);
            }
            testObjectNamesAtTheMomentPerAccount.put(accId, String.join(testObjectNamesCurrentAccount, '; '));
        }
        //Main loop 
        for(TestObject__c testObject : newRecords){
            testObject.TestObjectNamesWithSameAccount__c = testObjectNamesAtTheMomentPerAccount.get(testObject.Account__c); 
        }
    }
}