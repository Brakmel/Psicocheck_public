<?php
session_start();
if (isset($_SESSION["user"])) {
    header("Location: index.php");
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
<!--Esto es la info principal de la pagina, lo unico util como tal es el href que redirecciona al soporte.-->
    <div class="container">
    <div class="information">
        <div class="tittle">
            <h1 class="psico_h1">Psico</h1><h1 class="check_h1">Check</h1>
        </div>
        <p>Le facilitamos su busqueda de psychologist conforme a su necesidad, ademas podra interactuar en un foro 100% Online las 24 Hrs.</p>
        <p class="remember">En caso de necesitar comunicarse con soporte hacer click en "SOPORTE", atendemos tanto problemas de inicio de sesiòn, como tambien solicitudes de psychologist.</p>
        <a href="soporte.html">SOPORTE</a>
    </div>
<!--Esto es el registro, es un formulario el cual funciona como un insert a la tabla usuarios, siempre y cuando cumpla con las validaciones-->
        <form action="registration.php" method="post">
            <input type="text" name="apodo" placeholder="Apodo" required>
            <input type="email" name="email" placeholder="Correo electrónico" required>
            <input type="text" name="razon" placeholder="Motivo (Privado)" required>
            <input type="password" name="password" placeholder="Contraseña" required>
            <input type="password" name="repeat_password" placeholder="Repita contraseña" required>
            <input id="ok" type="submit" value="Registrarse" name="submit">
            <a href="login.php">Si ya tienes una cuenta, hazme click</a>
            <?php
                if (isset($_POST["submit"])){
                    $apodo = $_POST["apodo"];
                    $email = $_POST["email"];
                    $razon = $_POST["razon"];
                    $password = $_POST["password"];
                    $passwordRepeat = $_POST["repeat_password"];
/*Con esto ciframos la contraseña */
                    $passwordHash = password_hash($password, PASSWORD_DEFAULT);

                    $errors = array();
/*Estas son las validaciones para proceder a hacer el INSERT a la database */
                    if (empty($apodo) OR empty($email) OR empty($password) OR empty($passwordRepeat) OR empty($razon)){
                        array_push($errors,"➡️ Primero llena todos los requisitos");
                    }
/*Verificamos si todos los campos estan completos primero, luego si el correo es valido o ya esta en la DB, 12 caracteres
minimo para la pass y ademas debe coincidir el primer input de pass con el segundo, de lo contrario dara una alerta.*/
                    if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
                        array_push($errors, "➡️ Correo no valido");
                    }
                    if (strlen($password)<12){
                        array_push($errors, "➡️ 12 caracteres minimo para su contraseña");
                    }
                    if ($password!==$passwordRepeat){
                        array_push($errors, "➡️ ¡Hey, la contraseña debe coincidir!");
                    }
                    require_once "database.php";
                    $sql = "SELECT * FROM users WHERE email = '$email'";
                    $result = mysqli_query($conn, $sql);
                    $rowCount = mysqli_num_rows($result);
                    if ($rowCount>0) {
                        array_push($errors, "➡️ Este correo ya existe");
                    }
                    if (count($errors)>0) {
                        foreach ($errors as $error) {
                            echo "<div>$error<div>";
                        }
                    }else{
/*Una vez la validacion este completa se realiza el INSERT a la table users*/
                        $sql = "INSERT INTO users (apodo, email, razon, password) VALUES ( ?, ?, ?, ? )";
                        $stmt = mysqli_stmt_init($conn);
                        $prepareStmt = mysqli_stmt_prepare($stmt,$sql);
                        if ($prepareStmt) {
                            mysqli_stmt_bind_param($stmt,"ssss",$apodo, $email, $razon, $passwordHash);
                            mysqli_stmt_execute($stmt);
/*Ademas realizamos un alert via JS para informar al usuario que su cuenta fue registrada con exito*/
                            echo'<script type="text/javascript">
                            alert("Excelente, ahora tienes tu cuenta 😉🤘");
                            window.location.href="index.php";
                            </script>';
                        }else{
                            die("Algo salio mal, revisa tu conexion por favor");
                        }
                    }
                }
            ?>
        </form>
    </div>
</body>
</html>