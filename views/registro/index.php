<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Periodico El Faro</title>
    
</head>
<body>

    <?php require 'views/header.php'; ?>

    <div id="main">
        <div class="container-fluid text-center text-dark"><h1>Registro de Usuario</h1></div>

        <div class="m-0 row justify-content-center"><?php echo $this->mensaje; ?></div>

        <section class="container" style="width:380px">
            <form method="POST" action="<?php echo constant('URL')?>registro/registrarNuevoUsuario">
                <p for="title" style="margin:0">Nombre</p>
                <input class="form-control" type="text" id="nombre" name="nombre" required><br>

                <p for="category" style="margin:0">Correo</p>
                <input class="form-control" type="email" id="email" name="email" required><br>                    

                <div class="row">
                    <div class="col-md-6">
                        <p for="category" style="margin:0">Clave</p>
                        <div class="input-group">
                            <input class="form-control" type="password" id="password" name="password" required>
                            <div class="input-group-append">
                                <button id="show_password" class="btn btn-primary" type="button" 
                                    onclick="mostrarPassword()">
                                    <span class="fa fa-eye-slash icon"></span> 
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
          <br>  

                </p><input class="btn btn-secondary" type="submit" name="btn_submit" id="btn_submit" value="Registrar"></p><br><br>

            </form>
        </section>
    </div>

<?php require 'views/footer.php'; ?> 

</body>
</html>