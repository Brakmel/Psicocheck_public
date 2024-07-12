<!--Por medio de esta consulta generamos el insrt a la tabla chat, la cual, tomara el mensaje del usuario conforme a los campos llenados
y los mostrara en un select dentro del index principal-->
<?php
include("conexion.php");
$con=conectar();

$id= $_POST['id'];
$mensaje= $_POST['mensaje'];
$url= $_POST['url'];
$Rol= $_POST['Rol'];
$apodo= $_POST['apodo'];


$sql="INSERT INTO chat (id, mensaje, url, Rol, apodo) VALUES ('$id', '$mensaje', '$url', '$Rol', '$apodo')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location:index.php");
    
}else { echo "No se pudo enviar tu mensaje";
}
?>