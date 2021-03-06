-- TABLE
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'SCHEMA' AND TABLE_NAME = 'TABLE')
BEGIN
    PRINT 'EXISTS!'
END

-- VIEW
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'SCHEMA' AND TABLE_NAME = 'VIEW')
BEGIN
    PRINT 'EXISTS!'
END

-- COLUMN
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'SCHEMA' AND TABLE_NAME = 'TABLE' AND COLUMN_NAME = 'COLUMN')
BEGIN
    PRINT 'EXISTS!'
END

-- CONSTRAINT (PK and FK)
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_SCHEMA = 'SCHEMA' AND TABLE_NAME = 'TABLE' AND CONSTRAINT_NAME = 'CONSTRAINT')
BEGIN
    PRINT 'EXISTS!'
END

-- INDEX
IF EXISTS (SELECT 1 FROM SYS.INDEXES WHERE OBJECT_ID = OBJECT_ID('SCHEMA.TABLE') AND NAME='INDEX')
BEGIN
	PRINT 'EXISTS!'
END

-- DEFAULT
IF OBJECT_ID('DEFAULT', 'D') IS NOT NULL
BEGIN
    PRINT 'EXISTS!'
END

-- PROCEDURE
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_TYPE = 'PROCEDURE' AND ROUTINE_SCHEMA = 'SCHEMA' AND ROUTINE_NAME = 'PROCEDURE')
BEGIN
    PRINT 'EXISTS!'
END

-- FUNCTION
IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE ROUTINE_TYPE = 'FUNCTION' AND ROUTINE_SCHEMA = 'SCHEMA' AND ROUTINE_NAME = 'FUNCTION')
BEGIN
    PRINT 'EXISTS!'
END