<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/table.css">
<link rel="icon" href="img/logo.png" type="image/gif" sizes="16x16">
<title>All our employees</title>
<img src="img/logo.png" alt="Logo">
<h1>All our employees </h1>
<a href="index.php?back">Go back</a>
<table class="table table-bordered">
        <tr>
        <th>Name</th>
        <th>Last name</th>
        <th>Email</th>
</tr>

<?php 
function consulta () {
    global $conexion;
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$bd = "employee";
$conexion = mysqli_connect($dbhost, $dbuser, $dbpass, $bd);
$sql= "SELECT * FROM employes";
$result = mysqli_query($conexion, $sql);

// comienza un bucle que leerá todos los registros existentes
while($row = mysqli_fetch_array($result)) {
// $row es un array con todos los campos existentes en la tabla
echo "<tr>";
    echo "<td>".$row['first_name']."</td>";
    echo "<td> ".$row['last_name']."</td>";
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