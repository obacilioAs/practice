/********************************************************************************************************************************************
* @description       : Trigger Handler class for TestObjectTrigger, manages logic on before and after insert, update and delete
* @author            : Alan Gutierrez
* @group             : Apex Systems SFDC
* @last modified on  : 02-02-2023
* @last modified by  : Alan Gutierrez
* @since             : Alan Gutierrez - 02-02-2023 - Ticket T0002: Trigger Handler creation
*********************************************************************************************************************************************/
public class TestObjectTriggerHandler {
    public static void doBeforeInsert(List<TestObject__c> newList) {
        
    }
    
    public static void doAfterInsert(List<TestObject__c> newList) {
        
    }
    
    public static void doBeforeUpdate(List<TestObject__c> newList, Map<Id, TestObject__c> oldMap) {
        
    }
    
    public static void doAfterUpdate(List<TestObject__c> newList, Map<Id, TestObject__c> oldMap) {
        
    }
    
    public static void doBeforeDelete(Map<Id, TestObject__c> oldMap) {
        
    }
    
    public static void doAfterDelete(Map<Id, TestObject__c> oldMap) {
        
    }
}