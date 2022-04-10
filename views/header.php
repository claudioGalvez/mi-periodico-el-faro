<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Periodico El Faro</title>

    <link rel="stylesheet" href="<?php echo constant('URL')?>public/css/estilos.css">
    <link rel="stylesheet" href="<?php echo constant('URL')?>public/css/fonts.css">
    <link rel="stylesheet" href="<?php echo constant('URL')?>public/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-3 col-md-3 col-lg-2">
                    <img src="<?php echo constant('URL')?>views/img/faro.jpg " alt="Faro" id="faro" class="img-thumbnail" style="width:150px;height:100px" />
                </div>
                <div class="col-xs-9 col-sm-6 col-md-6 col-lg-8" id="cabecera">
                    <p class="t1">El Faro</p>
                    <p class="t2">Tu periódico Online</p>
                </div>
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-2" id="fecha">
                    <div id="box-date"></div>
                    <div id="box-time"></div>
                </div>
            </div>

        </div>

        <div class="menu-bar text-xs-right arriba">
            <nav class="container" role="menu">
                <ul class="menu-list menu-inline">
                    <li class="list-inline-item"><a href="<?php echo constant('URL')?>main">Inicio</a></li>
                    <li class="list-inline-item"><a href="<?php echo constant('URL')?>deportes">Deportes</a></li>
                    <li class="list-inline-item"><a href="<?php echo constant('URL')?>negocios">Negocios</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="social">
        <ul>
            <li><a href="https://www.facebook.com/" target="_blank" class="icon-facebook"></a></li>
            <li><a href="https://twitter.com/?lang=ES" target="_blank" class="icon-twitter"></a></li>
            <li><a href="https://www.instagram.com/" target="_blank" class="icon-instagram"></a></li>
            <li><a href="https://www.youtube.com/" target="_blank" class="icon-youtube"></a></li>
        </ul>
    </div>
</body>
</html>