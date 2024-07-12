<?php 
    session_start();

    if (isset($_SESSION["user"])) {
        header("Location: index.php");
        exit();
    }
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
<!--Aqui esta generado el logo prinicipal de la pagina web, el titulo y la descripcion, ademas del boton de Soporte-->
<div class="container">
    <div class="information">
        <div class="tittle">
            <h1 class="psico_h1">Psico</h1><h1 class="check_h1">Check</h1>
        </div>
        <p>Le facilitamos su busqueda de psychologist conforme a su necesidad, ademas podra interactuar en un foro 100% Online las 24 Hrs.</p>
        <a href="soporte.html">SOPORTE</a>
    </div>
<!--El login, funciona como un form el cual por medio de un action genera las valadicaciones conforme a la tabla usuarios, 
si todo esta bien, procede a loguearse el usuario, si hay algo erroneo saldran respectivas alertas.-->
        <form action="login.php" method="POST">
            <input type="email" placeholder="Correo electrónico" name="email">
            <input type="password" placeholder="Contraseña" name="password">
            <input id="ok" type="submit" value="Iniciar sesión" name="login">
            <?php
                if (isset($_POST["login"])) {
                    $email = $_POST["email"];
                    $password = $_POST["password"];
                    require_once "database.php"; 
                    $sql = "SELECT * FROM users WHERE email = ?";

                    $stmt = mysqli_prepare($conn, $sql);
                    mysqli_stmt_bind_param($stmt, "s", $email);
                    mysqli_stmt_execute($stmt);

                    $result = mysqli_stmt_get_result($stmt);
                    $user = mysqli_fetch_array($result, MYSQLI_ASSOC);

                    if ($user) {
                        if (password_verify($password, $user["password"])) {
                            $_SESSION["user"] = $user["Rol"] ?? "Rol";
                            $_SESSION["email"] = $user["email"];
                            $_SESSION["apodo"] = $user["apodo"];
                            
                            header("Location:index.php"); 
                            exit();  
                        } else {
                            echo "➡️ ¡Contraseña incorrecta!";
                        }
                    } else {
                        echo "➡️ Correo inexistente";
                    }
                }
            ?>
<!--Href al menu registrarse + la burbujita del gatito el cual tambien es un href que re direcciona a la pagina contra suicidios.-->
            <a href="registration.php">¿Deseas registrarte?, Hazme click</a> 
        </form>
        <div class="burbuja" title="Si necesitas ayuda urgente haz click">
            <a href="tel:*4141"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdXl4eWY1YW1yOWR3ZzIxd29oYnY1MmdzOWxseTh4d3F3cjRmdm9seiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/AexQSuxnExtQGHLiBN/giphy.gif"></a>
        </div>
    </div>
</body>
</html>