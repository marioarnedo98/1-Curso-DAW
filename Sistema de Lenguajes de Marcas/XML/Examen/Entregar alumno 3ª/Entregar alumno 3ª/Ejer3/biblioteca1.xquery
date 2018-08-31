for $libro in doc("Ejercicio 3 libros.xml")//biblioteca/libro
let $titulo:= $libro/titulo
let $autor:=$libro/autor
return <libros>{$titulo, $autor}</libros>