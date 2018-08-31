for $libro in doc("Ejercicio 3 libros.xml")//biblioteca/libro
let $titulo:= $libro/titulo
let $autor:=$libro/autor
where $libro/autor = "Edgar Allan Poe"
return <libros>{$titulo, $autor}</libros>