<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Periodico El Faro</title>

</head>
<body>

    <?php require 'views/header.php'; ?>

    <div>
        <h1 style="color:red;"><?php echo $this->mensaje; ?></h1>
    </div>

    <?php require 'views/footer.php'; ?>
    
</body>

</html>