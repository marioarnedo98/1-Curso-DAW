
UPDATE TABLE KK(CAMP INT NOT NULL PRIMARY KEY);
INSERT INTO KK VALUES(1),(2), (3);
BEGIN TRY 
BEGIN TRAN 
INSERT INTO KK VALUES (4);
INSERT INTO KK VALUES (1);
INSERT INTO KK VALUES (5);
COMMIT
END TRY
BEGIN CATCH
PRINT ERROR_NUMBER()
 PRINT ERROR_SEVERITY()
 PRINT ERROR_STATE()
 PRINT ERROR_PROCEDURE()
 PRINT ERROR_LINE()
 PRINT ERROR_MESSAGE()
ROLLBACK
END CATCH
PRINT 'TAS PASAO'
SELECT * FROM KK;