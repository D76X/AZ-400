USE CustomerManagement
GO 

/* 
https://app.pluralsight.com/course-player?clipId=c18e505d-4f8b-4a24-8781-6dc2b42054fd
In order to use ALL the feature available to tSQLt on a DB
you must set TRUSTWORTHY = ON
You find this in 
Properties > Options > TRUSTWORTHY
If TRUSTWORTHY = OFF then not all the feature of a particular 
version of tSQLt will be available to the DB.
*/

EXEC sp_configure 'clr enabled', 1;
RECONFIGURE;
GO
DECLARE @cmd NVARCHAR(MAX);
SET @cmd='ALTER DATABASE '+ QUOTENAME(DB_NAME()) + 'SET TRUSTWORTHY ON;';
EXEC(@cmd);
GO


