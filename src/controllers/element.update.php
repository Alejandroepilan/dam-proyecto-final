<?php
// Incluimos la cabecera comun
include "../src/controllers/controller.header.php";

// Comprobamos que el metodo de solicitud sea POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
  // Obtenemos los datos enviados por el metodo de solicitud POST
  $datosPost = $_POST;

  // Guardamos la tabla donde va el elemento a actualizar
  $nombreTabla = $datosPost['tabla'];
  // Quitamos la tabla de los datos
  unset($datosPost['tabla']);

  // Obtenemos el nombre del campo que lleva la id
  $columnaId = $nombreTabla."_id";
  // La guardamos en una variable
  $elementoId = $datosPost[$columnaId];

  // Creamos un array con las columnas y valores de los datos obtenidos para pasarlo en la sentencia SQL
  $sets = [];
  foreach ($datosPost as $columna => $valor) {
    $sets[] = "$columna = '$valor'";
  }
  $sets = implode(", ", $sets);
  
  // Actualizamos el elemento de la DB
  $sql = "UPDATE $nombreTabla SET $sets WHERE (`$columnaId` = '$elementoId')";
  $conexion->query($sql);
} else {
  http_response_code(400); // Solicitud incorrecta
}
?>