/********************************************************************************************************************************************************
* @description       : Test Data Factory
* @author            : Astrid Villanueva
* @group             : Apex Systems SFDC
* @last modified on  : 02-03-2023
* @last modified by  : Astrid Vilanueva
* @since             : Astrid Villanueva - 02-03-2023 - Ticket T0004: Utility Test class creation
**********************************************************************************************************************************************************/
public class TestDataFactory {
    public static Account createAccount(Boolean insertRecord){
        Account accountRecord=new Account(
        	Name='TestAccount'
        );
        insert accountRecord;
        return accountRecord;
    }
}