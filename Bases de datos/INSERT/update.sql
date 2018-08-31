use Jardineria;
UPDATE españa
SET CodigoPostal =(SELECT CodigoPostal FROM Oficinas 
WHERE Ciudad='Barcelona')
WHERE Pais like 'España';