<!--Decidi crear una funcion para la conexion, tal que poder hacer el insert del form en el index principal para 
el foro con mayor facildiad-->
<?php
function conectar() {
    $host="localhost";
    $user="root";
    $pass="";

    $bd="login_register";

    $con=mysqli_connect($host,$user,$pass);

    mysqli_select_db($con,$bd);

    return $con;
}
?>