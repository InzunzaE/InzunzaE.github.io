<?php
    
    $cuadros = $_POST["cuadro"];

    //Validar que solo lleve X y O

    for($i=0; $i<count($cuadros); $i++){
        echo $cuadros[$i] . ",";
        if( $cuadros[$i] != "X" && $cuadros[$i] != "O" ){
            echo "<h2>Solo se permiten X y/o O</h2>";
            return;
        }
    }   

/*
    [X][X][X]
    [][][]
    [][][]
 */
    if($cuadros[0] == "X" && $cuadros[1] =="X" && $cuadros[2] =="X" ) {
        echo "<h1> Gana X  con linea 0, 1, 2 </h1>";
        echo "[X] [X] [X] <br> [ ] [ ] [ ] <br> [ ] [ ] [ ] ";
        return;
    } else if ($cuadros[0] == "O" && $cuadros[1] =="O" && $cuadros[2] =="O" ){
        echo "<h1> Gana O  con linea 0, 1, 2 </h1>";
        echo "[O] [O] [O] <br> [ ] [ ] [ ] <br> [ ] [ ] [ ]" ;
    }
 

    if($cuadros[3] == "X" && $cuadros[4] =="X" && $cuadros[5] =="X" ) {
        echo "<h1> Gana X con linea 3, 4, 5 </h1>";
        echo "[ ] [ ] [ ] <br> [X] [X] [X]";
        return;
    } else if ($cuadros[3] == "O" && $cuadros[4] =="O" && $cuadros[5] =="O" ){
        echo "<h1> Gana O con linea 3, 4, 5 </h1>";
        echo "[ ] [ ] [ ] <br> [O] [O] [O]";
    }

    if($cuadros[6] == "X" && $cuadros[7] =="X" && $cuadros[8] =="X" ) {
        echo "<h1> Gana X  con linea 6, 7, 8 </h1>";
        echo "[ ] [ ] [ ] <br> [ ] [ ] [ ] <br>  [X] [X] [X]";
        return;
    } else if ($cuadros[6] == "O" && $cuadros[7] =="O" && $cuadros[8] =="O" ){
        echo "<h1> Gana O  con linea 6, 7, 8 </h1>";
        echo "[ ] [ ] [ ] <br> [ ] [ ] [ ] <br>  [O] [O] [O]";
    }

    //PARADOS//

    if($cuadros[0] == "X" && $cuadros[3] =="X" && $cuadros[6] =="X" ) {
        echo "<h1> Gana X con linea 0, 3, 6 </h1>";
        echo "[X] [ ] [ ] <br> [X] [ ] [ ] <br>  [X] [ ] [ ]";
        return;
    } else if ($cuadros[0] == "O" && $cuadros[3] =="O" && $cuadros[6] =="O" ){
        echo "<h1> Gana O con linea 0, 3, 6 </h1>";
        echo "[O] [ ] [ ] <br> [O] [ ] [ ] <br>  [O] [ ] [ ]";
    }

    if($cuadros[1] == "X" && $cuadros[4] =="X" && $cuadros[7] == "X" ) {
        echo "<h1> Gana X con linea 1, 4, 7 </h1>";
        echo "[ ] [X] [ ] <br> [ ] [X] [ ] <br>  [ ] [X] [ ]";
        return;
    } else if ($cuadros[1] == "O" && $cuadros[4] =="O" && $cuadros[7] == "O" ){
        echo "<h1> Gana O con linea 1, 4, 7 </h1>";
        echo "[ ] [O] [ ] <br> [ ] [O] [ ] <br>  [ ] [O] [ ]";
    }

    if($cuadros[2] == "X" && $cuadros[5] =="X" && $cuadros[8] =="X" ) {
        echo "<h1> Gana X con linea 2, 5, 8 </h1>";
        echo "[ ] [ ] [X] <br> [ ] [ ] [X] <br>  [ ] [ ] [X]";
        return;
    } else if ($cuadros[2] == "O" && $cuadros[5] =="O" && $cuadros[8] =="O" ){
        echo "<h1> Gana O con linea 2, 5, 8 </h1>";
        echo "[ ] [ ] [O] <br> [ ] [ ] [O] <br>  [ ] [ ] [O]";
    }
//CRUZADO

if($cuadros[0] == "X" && $cuadros[4] =="X" && $cuadros[8] =="X" ) {
    echo "<h1> Gana X con linea 0, 4, 8 </h1>";
    echo "[X] [ ] [ ] <br> [ ] [X] [ ] <br>  [ ] [ ] [X]";
    return;
} else if ($cuadros[0] == "O" && $cuadros[4] =="O" && $cuadros[8] =="O" ){
    echo "<h1> Gana O con linea 0, 4, 8 </h1>";
    echo "[O] [ ] [ ] <br> [ ] [O] [ ] <br>  [ ] [ ] [O]";
}

if($cuadros[2] == "X" && $cuadros[4] =="X" && $cuadros[6] =="X" ) {
    echo "<h1> Gana X con linea 2, 4, 6 </h1>";
    echo "[ ] [ ] [X] <br> [ ] [X] [ ] <br>  [X] [ ] [ ]";
    return;
} else if ($cuadros[2] == "O" && $cuadros[4] =="O" && $cuadros[6] =="O" ){
    echo "<h1> Gana O con linea 2, 4, 6 </h1>";
    echo "[ ] [ ] [O] <br> [ ] [O] [ ] <br>  [O] [ ] [ ]";
}



?>