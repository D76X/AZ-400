USE tSQLt_Example
GO 

/* 
Show test Schemae 
Database tests are located within databse schemas.
This shows the schemas that are registered as tSQLt classes.
BE >> Security >> Schemas
Each test schema contains individual tests.
Individual tests in tSQLt are stored procedures.
BE >> Programmability >> Stored Procedures.
All SPs that are test must be named TestClass.test XXXX
as this patern is used by tSQLt to make inventory of the tests.
*/
SELECT * FROM tSQLt.TestClasses

/* Ti run tSQLt tests one EXEC SPs*/
/* Run all Unit tests*/
EXEC tSQLt.RunAll
/* Run Unit tests of a specific class*/
EXEC tSQLt.Run 'AcceleratorTests'

/* 
The results of a test execution are stored in a table
and also diplayed into a summary on the Messages tab
of SSMS. Only the most recent run is retained.
*/
SELECT * FROM tSQLt.TestResult
WHERE Result = 'Failure'

/*
The Function Info provides information about the tSQLt version.
tSQLt is installed as a database object and thismakes it possible
for different DBs on the same server to make use of different 
versions of tSQLt. 
Different versions of tSQLt may provide different Features!
*/
SELECT * FROM tSQLt.Info()

------------------------------------------------------------------------


