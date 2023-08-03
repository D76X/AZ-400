USE CustomerManagement
GO

/* 

https://app.pluralsight.com/course-player?clipId=6d47130a-9a6b-414c-bb91-0c31b42d7cc6
Requirement:
For each Contact Type
-How many contacts have taken place?
-How much time in total was used?

Possible Tets
-Does the solution exist in teh DB?
-Does the solution have the right (required) format?
-Does the solution work also when there is a large amount of data to summarize?  
*/


/*
https://app.pluralsight.com/course-player?clipId=43a300d6-bc8b-40c5-be6c-4beaef8d6cdd
This creates a new DB schema AND marks it as TEST CLASS.
This SP is part of the assets that are installed on the DB by tSQLt.
*/
EXEC tSQLt.NewTestClass @ClassName = N'RptContactTypes' -- nvarchar(max)
GO

--Check that the schema was created
--List schemas in SQL Server database
--https://dataedo.com/kb/query/sql-server/list-schemas-in-database
select s.name as schema_name, 
    s.schema_id,
    u.name as schema_owner
from sys.schemas s
    inner join sys.sysusers u
        on u.uid = s.principal_id
order by s.name

--PART-2

/* 
tSQLt tests are SPs. 
Once you run this you should find it as a SP with schema ChecktSQLt and name 'test blank test'
Remember that in tSQLt test names MUST START with the word TEST for tSQLt to know them as such.
We DO NOT WANT a test to pass by default, the opposite is true!
*/
CREATE PROC RptContactTypes.[test to check RptContactTypes exists] 
AS
BEGIN
 
 --Assemble
 --In this test there is no setup work to do

 --Act
 --In this test there is no action to perform

 --Assert
 --this is is teh default empty implementation
 EXEC tSQLt.Fail 'this test has not yet been implemented!'

 --in this test we only have to assert the existence of object in the DB with a given name
 --it does NOT chekc what type of object that is!
 EXEC tSQLt.AssertObjectExists

END;

/* 
Run the test with tSQLt as a SP to see that the empty test passes, which is not the desired result!
*/
----run all tests
--EXEC tSQLt.RunAll
--GO
----run the single test
--EXEC tSQLt.Run 'ChecktSQLt.[test blank test]'
--GO

----alter the SP of the new test to make internally use of the tSQLt.Fail SP
--ALTER PROC ChecktSQLt.[test blank test] AS
--	EXEC tSQLt.Fail 'this test has not yet been implemented!'
--GO

----run the single test AND verify that tSQLt indeed issues a red message to the result window for this test
--EXEC tSQLt.Run 'ChecktSQLt.[test blank test]'
--GO
