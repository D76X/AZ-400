EXEC tSQLt.NewTestClass @ClassName = N'DevelopmentStandards' -- nvarchar(max)
GO
CREATE PROC DevelopmentStandards.[test Naming Convention - test classes correspond to object in database] AS
--Assemble
--Act
SELECT  Name,
		SchemaID,
		OBJECT_ID('dbo.' + name) AS ObjectID
INTO DevelopmentStandards.Actual
FROM    tSQLt.TestClasses
WHERE OBJECT_ID('dbo.' + name) IS NULL
AND NAME != OBJECT_SCHEMA_NAME(@@ProcID)
ORDER BY NAME

--Assert

EXEC tSQLt.AssertEmptyTable 'DevelopmentStandards.Actual'

GO

EXEC tSQLt.Run 'DevelopmentStandards'