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
    </style>
</head>
<body>
    <?php
    $colores = ["#C88EA7", "#526D82", "9DB2BF", "#DDE6ED", "#99DBF5", "#8696FE"  ];
    ?>
    <div class="container">
    <h1>Practica 7 - Tablero de serpientes y escaleras</h1><hr>
      
    <form action="">    
        <div class="row">           
                <?php
                for($i=100; $i>0; $i-- ){
                    if($i == 4 || $i == 9 || $i == 20 || $i == 28 || $i == 40 || $i == 63 || $i == 71 ){
                    echo"<div class='col-1 card m-1 casilla escalera ' style='background-color:".$colores[rand(0,5)].";'>"  .$i. "</div>";
                    } else if($i == 17 || $i == 54 || $i == 62 || $i == 64 || $i == 87 || $i == 95 || $i == 99) {
                    echo"<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,5)].";'>"  .$i. "</div>";
                } else {
                    echo"<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,5)].";'>"  .$i. "</div>";
                }
            }
                ?>
        </div>    
    </div>
</body>
</html>