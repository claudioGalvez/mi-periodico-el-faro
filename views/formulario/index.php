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
        <div class="container text-center text-dark"><h1>Formulario Noticias</h1></div>

        <div class="m-0 row justify-content-center"><?php echo $this->mensaje; ?></div>
        
        <section class="main">
            <form method="POST" action="<?php echo constant('URL')?>formulario/registrarNuevaNoticia" enctype="multipart/form-data">
                <label for="title">Título</label><br>
                <input class="formulario" type="text" id="title" name="title" required><br><br>

                <label for="category">Categoría</label><br>
                <input class="formulario" type="text" id="category" name="category" required><br><br>

                <label for="article">Artículo</label><br>
                <textarea class="formulario" id="article" name="article" rows="10" cols="70" required></textarea><br><br>

                <label for="image">Adjuntar Imagen<input type="file" name="archivoimagen" accept="image/*" />
                </label><br><br>

                <label for="audio">Adjuntar Audio<input type="file" name="archivoaudio" accept="audio/*" /></label><br><br>

                <label for="video">Adjuntar Video<input type="file" name="archivovideo" accept="video/*" /></label><br><br>
                
                <p class="tipo-noticia">
                    Seleccione Sección:
                    <select name="menu">
                        <option value="2">Deportes</option>
                        <option value="3">Negocios</option>
                        <option value="1">General</option>
                    </select>
                </p>

                </p><input class="btn btn-secondary" type="submit" name="btn_submit" id="btn_submit" value="Enviar noticia"></p><br><br>

            </form>
        </section>
    </div>

<?php require 'views/footer.php'; ?> 

</body>
</html>