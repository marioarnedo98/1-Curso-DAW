use Jardineria;
UPDATE espa�a
SET CodigoPostal =(SELECT CodigoPostal FROM Oficinas 
WHERE Ciudad='Barcelona')
WHERE Pais like 'Espa�a';