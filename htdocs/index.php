<!--Generamos la conexion con la DB-->
<?php
    include("conexion.php");
    $con=conectar();

    $sql="SELECT * FROM chat";
    $query=mysqli_query($con,$sql);
?>
<!--Rescatamos la informacion del usuario con la sesion para usarla màs adelante-->
<?php
    session_start();

    if (!isset($_SESSION["user"])) {
        header("Location:login.php");
    }
    
    $user = isset($_SESSION["user"]) ? $_SESSION["user"] : "";
    $apodo = isset($_SESSION["apodo"]) ? $_SESSION["apodo"] : "";
    $email = isset($_SESSION["email"]) ? $_SESSION["email"] : "";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PsicoShake</title>
    <link rel="stylesheet" href="Style/index.css">
    <link rel="icon" href="Style/Logo.ico">
</head>
<body>
<!--Esta es la informacion que se repite en todas las paginas, cumnple la funcion de presentar la pagina-->
    <div class="container">
        <div class="information">
            <div class="tittle">
                <h1 class="psico_h1">Psico</h1><h1 class="check_h1">Check</h1>
            </div>
            <p>¡Welcome!, se espera que disfrutes del foro y que su busqueda de psychologist sea exitosa.</p>
            <p class="remember">¡Se le recuerda!, se le enviara al correo el "Check" de verified, si no es contestado dentro de las 24hrs su cuenta sera borrada, gracias por la atención.</p>
            <a href="logout.php">Cerrar sesión </a>
        </div>
<!--Aqui generamos el foro, el cual, es un form mezclado con un select-->
        <div id="container_del_container_chat">
            <h1 class="h1_foro">Foro Online </h1>
            <div id="container_chat">
                <div class="sends">
                <?php while($row=mysqli_fetch_array($query))
                    {
                ?>
                <!--Esta parte del foro sirve como select, aqui mostramos los datos de quien manda el mensaje, el cual, aparecere su ROL 
            en caso de ser psicologo, su apodo, la hora en que se envio el mensaje y la url en caso de que quiera expresarse por medio de un gif
        de gifty-->
                    <div class="container_msj">
                        <div class="avatar">
                            <img src="<?php echo $row['url']?>">
                            <p class="sending_rol"><?php echo $row['Rol']?></p>
                            <p class="sending_apodo"><?php echo $row['apodo']?></p>
                            <p class="sending_time"><?php echo $row['hora']?></p>
                        </div>
                        <p class="sending"><?php echo $row['mensaje']?></p>
                    </div>           
                <?php 
                    } 
                ?>
                </div>
            </div>
            <form class="container_writing" action="enviar.php" method="POST" enctype="multipart/formdata" required>
                <select name="url">
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTdmNDcyN3NyeDlnOGdiM3Z2amFtenNla2gxZWdkcHFtdGd6Zm5taCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1jXAh9RJME0LZoBFRp/giphy.gif">GIF Universo</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdno5bjBlNWdobWM3NGt4OXdhM3luMTZ0dGFscG1ibmo2MmowejRxdiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/OHs6JJvRA4v7hsxuzF/giphy.gif">GIF Fantasma Celebrando</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZDhoejFlbXJ4MjQ1d2ozejJxMTQzdDZqNnFqcGdxNWI5Zmk4OG56MiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ypLJVx9OSSvQGAt4GX/giphy.gif">GIF Gato Feliz</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMnkycHU4YjlnZjBxeGt2M3Ryb3dxZG50OWIwYTRzbnF6YmhrcWV6eSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/DXsNXjpBUomgYQXCiG/giphy.gif">GIF Gato Triste</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExaHdwejBjNzgwZmo3aDc0YnZvNnNtcTExcm01NXJibHkxYXFoamRxYSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/k8kITi9SAwe9JWbUaH/giphy.gif">GIF Chica Reflexiva</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGt2Y2YxM3A3OXl0cDFsajdhYW5rbWpmOW1kZGlneXRvNjBvbnRxbCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif">GIF Perro Protestando</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2t6cmUxcGc0ajVzOG81Y3YyOHlyMGp6NGdyankxMW5pdm9tZGt3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/MzGdg1LdXQVf3vKAQr/giphy.gif">GIF Dino Paciente</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExd2JzMWl3Nnp2Nzl3enAxN2thMWJ1cWo4cnU0YmNuOXR6OTZobGt3ZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/nU2M9iPoyY9qYKGTYT/giphy.gif">GIF Conejo Corazòn</option>
                    <option value="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHJsemxwdHd5b283ZXJ5dno0NTdyajkwc2U3cHJ6MWpqNTZ6czc3bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif">GIF Gato Furioso</option>
                </select>
                <input type="text" name="mensaje" class="writing" required placeholder="¿Que opinas?...(Soportamos 1500 carácteres!).">
                <input type="hidden" name="Rol" value="<?php echo $user?>">
                <input type="hidden" name="apodo" value="<?php echo $apodo?>">
                <input class="send_writing" type="submit">
            </form>
        </div>

        <?php
$sql = "SELECT * FROM psicologos";
$query = mysqli_query($con, $sql);
?>
<div class="Feed_Psico">
    <div class="seeker_psico">
        <form class="container_seeker" action="" method="get">
            <input type="text" name="busqueda" class="seeker" placeholder="Busque por modalidad, precio, sexo, especialidad, Ejemplo: Femenino Online.">
            <input type="submit" class="send_writing" value="Enter">
        </form>
    </div>
    <div class="infos_psico">
        <?php 
        if (isset($_GET['busqueda'])) {
            $busqueda = $_GET['busqueda'];
            $terms = explode(' ', $busqueda); // Dividir la búsqueda en términos individuales

            // Establecer la conexión a la base de datos
            require_once 'database.php';

            // Construir la consulta SQL dinámica
            $sql = "SELECT * FROM psicologos WHERE 1=1";
            foreach ($terms as $term) {
                $term = mysqli_real_escape_string($conn, $term);

                // Verificar si el término incluye "años" para la experiencia
                if (strpos($term, 'años') !== false) {
                    $years = intval($term);
                    $sql .= " AND experiencia = $years";
                } else {
                    $sql .= " AND (nombre LIKE '%$term%' 
                                OR sexo LIKE '%$term%' 
                                OR modalidad LIKE '%$term%' 
                                OR precio LIKE '%$term%'
                                OR especialidad LIKE '%$term%')";
                }
            }

            $result = mysqli_query($conn, $sql);

            // Verificar si se encontraron resultados
            if (mysqli_num_rows($result) > 0) {
                // Mostrar los resultados de la búsqueda
                while ($row = mysqli_fetch_assoc($result)) {
                    echo '<div class="Info_psico">';
                    echo '<div class="bloque_1"> <img class="img_psico" src="'.$row['foto'].'"></div>';
                    echo '<div class="bloque_2">';
                    echo '<p class="p_b">'.$row['nombre'].'</p>';
                    echo '<p class="p_b">'.$row['sexo'].'</p>';
                    echo '<p class="p_b">'.$row['modalidad'].'</p>';
                    echo '<p class="p_b">'.$row['especialidad'].'</p>';
                    echo '<p class="p_b">'.$row['experiencia'].' años de experiencia</p>';
                    echo '</div>';
                    echo '<div class="bloque_3">';
                    echo '<p class="p_b">'.$row['descripcion'].'</p>';
                    echo '<p class="p_b">'.$row['precio'].'</p>';
                    echo '</div>';
                    echo '<a href="https://www.linkedin.com/feed/"><img class="red" src="https://freelogopng.com/images/all_img/1656994883linkedin-logo-transparent.png"></a>';
                    echo '<a href="https://web.whatsapp.com/"><img class="red" src="https://th.bing.com/th/id/OIP.ZsUQ2OMgjKhgnc9VjnWcfgHaHa?rs=1&pid=ImgDetMain"></a>';
                    echo '<a href="https://twitter.com/"><img class="red" src="https://pbs.twimg.com/profile_images/1683507906891718658/ZS9jJfar_400x400.jpg"></a>';
                    echo '</div>';
                }
            } else {
                echo "No se encontraron resultados.";
            }

            // Cerrar la conexión a la base de datos
            mysqli_close($conn);
        }
        ?>
    </div>
</div>
    <div class="burbuja">
            <a href="information.php"><img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYmRsY3dqN3ByYjA3cGZweDJuMDZzcW9xeWN3bjYzd2gyZmMwYWRzbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/F4yYBKoUue9UhB9tDM/giphy.gif"></a>
            <p class="p_t">Te invito a conocer a los artistas detras de los GIF <?php echo$apodo?>, ¡Hazme click miau!<p>
    </div>
    <div class="burbuja" title="Si necesitas ayuda urgente haz click">
        <a href="tel:*4141"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdXl4eWY1YW1yOWR3ZzIxd29oYnY1MmdzOWxseTh4d3F3cjRmdm9seiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/AexQSuxnExtQGHLiBN/giphy.gif"></a>
    </div>
</body>
</html>