/*TRANSACCIONES*/ 
--COMMIT :confirma los cambios hechos para que queden permanentes 
--ROLLBACK :cancelar los cambios que han sido realizados 
--SAVE TRAN:crear punto de restauración y asi se queda guardado hasta ese punto. 

--EJEMPLO ROLLBACK : No hace ningun cambio , debido a que la primera tran si puede hacerla y la segunda no
BEGIN TRY 
BEGIN TRAN

	UPDATE Empleados
	SET Nombre='Maria'
	WHERE CodigoEmpleado=0 
	SAVE TRANSACTION P1

	UPDATE Empleados
	SET CodigoEmpleado=1
	END TRY

BEGIN CATCH
ROLLBACK
END CATCH

--EJEMPLO COMMIT: Realiza el primer cambio porque si se puede y no hace la segunda porque es incorrecta.
BEGIN TRY 
BEGIN TRAN
	
	UPDATE Empleados
	SET Nombre='Maria'
	WHERE CodigoEmpleado=0 
	
	
	UPDATE Empleados
	SET CodigoEmpleado=1
	END TRY

BEGIN CATCH
COMMIT  
END CATCH

--IMPLICITAS ----- 
BEGIN TRY 

	
	UPDATE Empleados
	SET Nombre='Maria'
	WHERE CodigoEmpleado=0 
	
	
	UPDATE Empleados
	SET CodigoEmpleado=1
	
COMMIT TRANSACTION
END TRY
BEGIN CATCH
ROLLBACK TRANSACTION
END CATCH

 /* ERRORES MAS FRECUENTES QUE APARECEN EN LAS TRANSACCIONES 
		 ERROR_NUMBER()  ERROR_SEVERITY()
		 ERROR_SATE()	 ERROR_PROCEDURE() 
		 ERROR_LINE()    ERROR_MESSAGE(). */  