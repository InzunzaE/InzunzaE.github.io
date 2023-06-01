<?php

    $nombre = $_POST["nombre"];
    $calificacion = 0;

    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];

    echo "<h3>Pregunta 1: (".$pregunta1.")</h3>";

    if($pregunta1 == "b"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la A" . "<hr>";
    }
    echo "<h3>Pregunta 2: (".$pregunta2.")</h3>";
    if($pregunta2 == "c"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la C" . "<hr>";
    }
    echo "<h3>Pregunta 3: (".$pregunta3.")</h3>";
    if($pregunta3 == "b"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la B" . "<hr>";
    }
    echo "<h3>Pregunta 4: (".$pregunta4.")</h3>";
    if($pregunta4 == "c"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la C" . "<hr>";
    }
    echo "<h3>Pregunta 5: (".$pregunta5.")</h3>";
    if($pregunta5 == "c"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la C" . "<hr>";
    }
    echo "<h3>Pregunta 6: (".$pregunta6.")</h3>";
    if($pregunta6 == "a"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la A" . "<hr>";
    }
    echo "<h3>Pregunta 7: (".$pregunta7.")</h3>";
    if($pregunta7 == "a"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la A" . "<hr>";
    }
    echo "<h3>Pregunta 8: (".$pregunta8.")</h3>";
    if($pregunta8 == "c"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la C" . "<hr>";
    }
    echo "<h3>Pregunta 9: (".$pregunta9.")</h3>";
    if($pregunta9 == "b"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la B" . "<hr>";
    }
    echo "<h3>Pregunta 10: (".$pregunta10.")</h3>";
    if($pregunta10 == "b"){
        echo "Si le sabes <hr>";
        $calificacion++;
    }else{
        echo "No le sabes, la correcta es la B" . "<hr>";
    }

    if($calificacion >= 0 && $calificacion <=5){
        echo "<h3>Calificación: ".$calificacion.", Lo siento ".$nombre.", Te falya cultura flaco </h3>";
    }else if($calificacion >= 6 && $calificacion <= 10){
        echo "<h3>Calificación: ".$calificacion.", Felicidades ".$nombre.", Bien hecho kbron</h3>";
    }

?>