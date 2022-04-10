<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Periodico El Faro</title>

    <link rel="stylesheet" href="views/css/estilos.css">
    <link rel="stylesheet" href="views/css/bootstrap.min.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

    <?php require 'views/header.php'; ?>

    <div id="main">
        <div class="container text-center text-dark"><h1>Formulario Contacto</h1></div>

        <div class="m-0 row justify-content-center"><?php echo $this->mensaje; ?></div>
        
        <section class="container">
            <form method="POST" action="<?php echo constant('URL')?>contacto/registrarNuevoContacto">
                <p for="name" style="margin:0">Nombre</p>
                <input class="form-control" type="text" id="name" name="user_name" required><br>

                <p for="mail" style="margin:0">Email</p>
                <input class="form-control" type="email" id="mail" name="user_email" required><br>

                <p for="subject" style="margin:0">Asunto</p>
                <input class="form-control" type="text" id="subject" name="user_subject"><br>

                <p for="msg" style="margin:0">Mensaje</p>
                <textarea class="form-control" id="msg" name="user_msg" rows="10" required></textarea><br>

                <input class="btn btn-secondary" type="submit" value="Registrar Contacto"><br>

            </form>
        </section>
    </div>

    <?php require 'views/footer.php'; ?>

</body>
</html>