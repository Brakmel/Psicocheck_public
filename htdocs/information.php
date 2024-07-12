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
<div class="container">
    <div class="information">
        <div class="tittle">
            <h1 class="psico_h1">Psico</h1><h1 class="check_h1">Check</h1>
            <img src="Style/Psicocheck.webp">
        </div>
        <p>¡Bienvenido <?php echo $apodo?>!</p>
        <p class="remember">
        ¡Me alegra verte por aquí! Veo tu interés por el arte. Espero que encuentres algún artista que llene tu corazón o simplemente te traiga alguna emoción.
        </p>
    </div>
</div>
<div class="burbuja" title="Espero que estes listo para volver Psicocheck, muchas gracias por darte el tiempo miau! <3">
    <a href="index.php"><img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYmRsY3dqN3ByYjA3cGZweDJuMDZzcW9xeWN3bjYzd2gyZmMwYWRzbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/F4yYBKoUue9UhB9tDM/giphy.gif"></a>
    <p class="p_t">Cuando quieras regresar, hazme click <?php echo$apodo?><p>
</div>
<div class="infos_psico">
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/doodles"><img src="https://media.giphy.com/media/S7jE9UN8zNGOeqstLv/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo doodles "coloring the world with joy".<p>
</div>
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/gifs/fire-dogo-dog-hitting-a-pan-l4GNhfzNOu17VR16xq"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMjQ1eWszZ3NwbHk2d3AxcjI1djV0eTNjZGtzNXU1bXEwZjhoazFkMiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4GNhfzNOu17VR16xq/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo Emm "Hey I make gifs just for fun! Hope you like my work.".<p>
</div>
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/IntoAction"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdXl4eWY1YW1yOWR3ZzIxd29oYnY1MmdzOWxseTh4d3F3cjRmdm9seiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/AexQSuxnExtQGHLiBN/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo INTO ACTION "INTO ACTION is a movement of(...)".<p>
</div>
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/thisissteggy/"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZ3F3N3BxZXRkNHd2NzFqZ3ByZDJvNTM0dnd4dDlkeHFvN3I3MnNpcCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/b47WsmwgmFLBtaPtQA/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo Steggy "He is round, he is a good boy.".<p>
</div>
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/LuigiPixelArt"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdXV2amhndDlrb3B6MDhnMzJ0eTBzaWtjdTA2a3NkMGJvZnN2NzB2ayZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/k8kITi9SAwe9JWbUaH/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo Luigi Salas "Pixel Artists and motion graphics (...)".<p>
</div>
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/llla_gal"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZWN3czRpbnUzM3Vlbnd6MGNjY29ycHRjdTdkMDJqeXg2OGVreXFlbiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/yK2mq6beeYNQlCBKue/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo llla_luna.<p>
</div>
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/llla_gal"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExNDRxMGQ5YjA5aWZ4YmF4aXVhaWNqNXNrbnB2YnJzNGk2ZGxvYmo3biZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/CvbzcnrrCDc1KfYo4c/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo llla_luna.<p>
</div>
<div class="" title="Hazme click y mira mi arte<3">
    <a href="https://giphy.com/gifs/fire-evil-anger-HfrfobzbIgAdSYiCm2"><img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExNWZidDNmYmR6NWlkejJ6MzVqMHM2MnJmOTRqNTJ0cml4NnJxc24xeCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/HfrfobzbIgAdSYiCm2/giphy.gif"></a>
    <p class="p_t">Hola <?php echo$apodo?>, me llamo bitan I do art I'm not perfect, but I try.<p>
</div>
</div>
</body>
</html>