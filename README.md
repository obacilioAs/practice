# practice
Directory with custom code developed in Salesforce


Ticket T0001:
Create Custom Object with the following information:
  API Name: 
    TestObject__c, 
  Singular Label: 
    TestObject, 
  Plural Label: 
    TestObjects,
Create a custom Field for object TestObject__c with the following information
  Field Label: 
    Account	Object, 
  Name:	
    TestObject, 
  Field Name:	
    Account	Data, 
  Type:	
    Lookup, 
  API Name:	
    Account__c, 
Download metadata and commit changes in to feature branch and submit Pull Request adding Oscar Bacilio as reviewer.

Ticket T0002: (Alan) dependent on T0001
Create a Trigger for TestObject__c, and it's handler.
Commit changes in to feature branch and submit Pull Request adding Oscar Bacilio as reviewer.

Ticket T0003: (Astrid) dependent on T0002
Logic TBD
Add this logic to TestObjectUtility class (create if it does not exist)
Commit changes in to feature branch and submit Pull Request adding Oscar Bacilio as reviewer.
