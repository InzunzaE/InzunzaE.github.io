<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 7</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .casilla {
            height: 80px;
            font-we
        }

        .escalera {
            background-image: url('escalera.png');
            background-size:cover;
        }

        .serpiente {
            background-image: url('serpiente.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
        }
        
        .ficha{
            background-image: url('ficha.png');
            background-size: contain;
            background-repeat: no-repeat;   
            background-position: center;
        }
        
    </style>
</head>
<body>
    <?php
    $colores = ["#C88EA7", "#526D82", "9DB2BF", "#DDE6ED", "#99DBF5", "#8696FE"  ];
    if(isset($_POST["casilla"])){
        $dado = rand (1,12);
        echo "<h2> Resultado del dadin =  ".$dado."</h2>";  
        $casilla = $dado + intval($_POST["casilla"]);
        echo "<h3> El jugador estaba en la casilla".intval($_POST["casilla"]). "y pasó a la casilla".$casilla."</h3>";
        //Valida si gano el jugador
        if($casilla == 100){
            echo "<h1> El jugador ganó </h1>";
            $casilla = 100;
        } else   if( $casilla >100) {
            $casilla = 100 - ($casilla -100);
            echo "<h3> El jugador estaba en la casilla".intval($_POST["casilla"]). "se pasó por ".(100-$casilla)." y pasó a la casilla".$casilla."</h3>";
        }

        //valida escalera
        if( $casilla == 4){
            $casilla = 15;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla." </h1>";
        }
        if( $casilla == 9){
            $casilla = 31;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla." </h1>";
        }
        if( $casilla == 20){
            $casilla = 31;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla." </h1>";
        }  if( $casilla == 28){
            $casilla = 39;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla." </h1>";
        }   if( $casilla == 40){
            $casilla = 51;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla." </h1>";
        }   if( $casilla == 63){
            $casilla = 74;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla." </h1>";
        }   if( $casilla == 71){
            $casilla = 82;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla."</h1>";
        }   if( $casilla == 14){
            $casilla = 95;
            echo "<h1>el jugador cayó en una <img src='escalera.png' width='50px'>  y subió a ".$casilla."</h1>";
        }
        
    
    //Serpientes 
    if( $casilla == 17){
        $casilla = 6;
        echo "<h1>el jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a ".$casilla." </h1>";
    } if( $casilla == 54){
            $casilla= 43;
            echo "<h1>el jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a ".$casilla."</h1>";
    } if( $casilla == 64){
        $casilla= 53;
        echo "<h1>el jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a ".$casilla."</h1>";
    } if( $casilla == 62){
        $casilla= 51;
        echo "<h1>el jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a ".$casilla."</h1>";
    } if( $casilla == 87){
        $casilla= 76;
        echo "<h1>el jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a ".$casilla."</h1>";
    } if( $casilla == 95){
        $casilla= 77;
        echo "<h1>el jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a 5 ".$casilla."</h1>";
    } if( $casilla == 99){
        $casilla= 50;
        echo "<h1>el jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a ".$casilla."</h1>";
    } 

// q regrese
  




    
    
    
    
    
    }else {
        $casilla = 0;
    }
    ?>
    <div class="container">
    <h1>Practica 7 - Tablero de serpientes y escaleras</h1><hr>
      
    <form action="practica7.php" method="POST">    
        <input type="submit" value="Jugar" class="btn btn success"><hr>
            <div class="row">           
                <?php
                for($i=100; $i>0; $i-- ){
                    if($casilla == $i){ 
                        echo"<div class='col-1 card m-1 casilla ficha ' style='background-color:".$colores[rand(0,5)].";'>"  .$i. "</div>";
                    }
                    else if($i == 4 || $i == 14|| $i == 9 || $i == 20 || $i == 28 || $i == 40 || $i == 63 || $i == 71 ){
                    echo"<div class='col-1 card m-1 casilla escalera ' style='background-color:".$colores[rand(0,5)].";'>"  .$i. "</div>";
                    } else if($i == 17 || $i == 54 || $i == 62 || $i == 64 || $i == 87 || $i == 95 || $i == 99) {
                    echo"<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,5)].";'>"  .$i. "</div>";
                } else {
                    echo"<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,5)].";'>"  .$i. "</div>";
                }
            }
                ?>
        </div>  
        <input type="hidden" name="casilla" value="<?php echo $casilla; ?>" >  
    </div>
</body>
</html>