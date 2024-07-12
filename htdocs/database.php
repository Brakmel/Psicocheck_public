<!--Con esto generamos la conexion a la base de datos-->
<?php
$hostName = "localhost"; 
$dbUser = "root";
$dbPassword = "";
$dbName = "login_register";

$conn = mysqli_connect($hostName, $dbUser, $dbPassword, $dbName);
if (!$conn) {
    die ("No hay señal del servidor");
}
?>
