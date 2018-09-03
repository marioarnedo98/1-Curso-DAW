<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<h1>Aliens Abducted Me - Sumary</h1>
<a href="report.html">Go to the questionary</a>
<table class="table table-bordered">
        <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Cuando pasó</th>
        <th>Cuanto tiempo</th>
        <th>Cuantos</th>
        <th>Descripcion</th>
        <th>Que te han hecho</th>
        <th>Has visto a frank</th>
        <th>Otras cosas</th>
        <th>Email</th>
</tr>

<?php 
function consulta () {
    global $conexion;
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$bd = "aliendatabase";
$conexion = mysqli_connect($dbhost, $dbuser, $dbpass, $bd);

$result = mysqli_query($conexion, 'SELECT * FROM aliens_abduction');

// comienza un bucle que leerá todos los registros existentes
while($row = mysqli_fetch_array($result)) {
// $row es un array con todos los campos existentes en la tabla
echo "<tr>";
    echo "<td>".$row['id']."</td>";
    echo "<td>".$row['first_name']."</td>";
    echo "<td> ".$row['last_name']."</td>";
    echo "<td>".$row['when_it_happened']."</td>";
    echo "<td>".$row['how_long']."</td>";
    echo "<td>".$row['how_many']."</td>";
    echo "<td>".$row['alien_description']."</td>"; 
    echo "<td>".$row['what_they_did']."</td>";  
    echo "<td> ".$row['frank_spotted']."</td>";
    echo "<td>".$row['other']."</td>";
    echo "<td>".$row['email']."</td>";
    echo "</tr>";
} // fin del bucle de instrucciones
mysqli_free_result($result); // Liberamos los registros
mysqli_close($conexion); // Cerramos la conexion con la base de datos
echo "<hr>";
}
echo consulta();

?>
</table>