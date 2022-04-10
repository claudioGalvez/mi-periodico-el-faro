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
        <div class="container text-center">
            <div class="row">
                <div class="col-12">
                    <h1>Deportes</h1>
                </div>
            </div>
        </div>
        
        <div class="col-11" id="articulo"></div>
        <div class="container">
            <section class="main row" id="new">
                <?php 
                    include_once 'models/noticia.php';
                    foreach($this->noticias as $row){
                        $noticia = new Noticia();
                        $noticia = $row;
                ?>

                <article id="padre" class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                    <div class="titulo-noticia"><?php echo $noticia->titulo; ?></div>
                    <div class="categoria-noticia"><?php echo $noticia->categoria; ?></div>
                    <div class="texto-noticia">

                        <img <?php echo $noticia->rutaimagen ?> class='image'/>
                        
                        <?php echo $noticia->noticia; ?>

                        <?php echo $noticia->rutaaudio ?>

                        <?php echo $noticia->rutavideo ?>

                    </div>
                </article>

                <?php } ?>

            </section>
        </div>

    </div>
    
    <?php require 'views/footer.php'; ?>
    
</body>
</html>