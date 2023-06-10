<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Juego del ahorcado</title>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body  style="background-color: antiquewhite;" >
    <?php
        $nombre = $_POST["jugador"]; $palabra = $_POST["palabra"]; $vidas = $_POST["vidas"];
        $b= false;

        if(isset($_POST["frase"])){
            $frase = $_POST["frase"];
            $letra=$_POST["letra"];
            //Asigna la letra al array de frase
            for($i=0 ; $i<count(str_split($palabra));$i++){
                if($palabra[$i] == $letra){
                    $frase[$i] = $letra;
                    $b = true;
                }
            }
            //Resta visa en caso de que no coincida la letra
            if(!$b){
                echo "<h4>La letra ".$letra." no existe</h4>";
                $vidas--;
            }
            //Valida si de terminaron las vidas
            if($vidas <= 0){
                echo "<h1>Juego terminado se agotaron las vidas!</h1>";
                echo "<a href='practica6.html'>Regresar al inicio</a>";
                echo "<img src='badgame.jpg'>";
                return;
            }
            $terminado = false;
            //Valida si ganó
            for($j=0 ; $j<count(str_split($palabra)); $j++){
                if(!$frase[$j]){
                    $terminado = true;
                }
            }

            if($terminado == false){
                echo "<h1>Felicidades, ganaste!</h1>";
                echo "<a href='practica6.html'>Regresar al inicio</a>";
                echo "<img src='good-game.jpg'>";
                return;
            }

        }
    ?>
    <div class="container">
        <form action="practica6.php" method="POST">
            <input type="hidden" value="<?php echo $nombre ?>" name="jugador">
            <input type="hidden" value="<?php echo $palabra ?>" name="palabra">
            <input type="hidden" value="<?php echo $vidas ?>" name="vidas">

            <div class="row">
                <h1>Juego del Ahorcado</h1><hr>
                <h3>Nombre del jugador: <?php echo $nombre; ?></h3>
                <h4>Número de vidas: <?php echo $vidas; ?></h4>
                <?php
                    $letras = str_split($palabra); //[0]='H', [1]='O', [2]='L', [3]='A';
                    for($i=0; $i<(count($letras)); $i++){
                       
                       if(isset($_POST["frase"])) {
                        echo "<input type='text' name='frase[]' style='width: 5%;' value='".$frase[$i]."'>";
                    } else {
                        echo "<input type='text' name='frase[]' style='width: 5%;' value=''>";
                    }
                } 
                ?>
            </div>
            <div class="row mt-4">
                <div>
                    <input type="text" name="letra" maxlength="1" required>
                </div>
                <div>
                    <input type="submit" value="Enviar letra" class="btn btn-primary">
                </div>
            </div>
        </form>
    </div>
</body>
</html>