<?php 

    $nombre = $_GET ["nombre"];

    echo "Nombre: " .$nombre ."<br>" ;
    
    $edad = $_GET ["edad"];

    echo "edad: " .$edad ."<br>" ;

    $escuela = $_GET ["escuela"];

    echo "escuela: " .$escuela ."<br>" ;

    $fecha_ingreso = $_GET ["fecha_ingreso"];

    echo "fecha de ingreso: " .$fecha_ingreso  ."<br>" ;  

    $Direccion = $_GET ["Direccion"];

    echo "direccion : " .$Direccion  ."<br>"  ;
    
    if($edad >=18) {
        echo "Es mayor de edad" . "<br>";
    } else {
        echo "Es menor de edad" . "<br>";
    }

    if($escuela == "Cetis 107") {
        echo "<div style='background-color:blue;'>Cetis 107 </div>";
    } else if($escuela == "Cbtis 224") {
        echo "<div style='background-color:red;'>CBTIS 224</div>";
    } else if ($escuela == "Cobaes") {
        echo "<div style='background-color:green;'>Cobaes</div>";
    }
 
?>