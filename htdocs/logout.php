<!--Esto cierra la sesion y ademas redirecciona al login-->
<?php
    session_start();
    session_destroy();
    header("Location: login.php");
?>