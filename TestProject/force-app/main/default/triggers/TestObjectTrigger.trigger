/********************************************************************************************************************************************
* @description       : Trigger on TestObject that uses Trigger design patterns to send the logic to a Trigger Handler Class
* @author            : Alan Gutierrez
* @group             : Apex Systems SFDC
* @last modified on  : 02-02-2023
* @last modified by  : Alan Gutierrez
* @since             : Alan Gutierrez - 02-02-2023 - Ticket T0002: Trigger creation
*********************************************************************************************************************************************/
trigger TestObjectTrigger on TestObject__c (before insert, after insert, before update, after update, before delete, after delete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        TestObjectTriggerHandler.doBeforeInsert(Trigger.New);
    }
    
    if (Trigger.isAfter && Trigger.isInsert) {
        TestObjectTriggerHandler.doAfterInsert(Trigger.New);
    }
    
    if (Trigger.isBefore && Trigger.isUpdate) {
        TestObjectTriggerHandler.doBeforeUpdate(Trigger.New, Trigger.OldMap);
    }
    
    if (Trigger.isAfter && Trigger.isUpdate) {
        TestObjectTriggerHandler.doAfterUpdate(Trigger.New, Trigger.OldMap);
    }
    
    if (Trigger.isBefore && Trigger.isDelete) {
        TestObjectTriggerHandler.doBeforeDelete(Trigger.OldMap);
    }
    
    if (Trigger.isAfter && Trigger.isDelete) {
        TestObjectTriggerHandler.doAfterDelete(Trigger.OldMap);
    }
}