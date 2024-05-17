<?php
// Incluimos la cabecera comun
include "controller.header.php";

// Comprobamos que el metodo de solicitud sea POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
  // Obtenemos todos los datos enviados por el metodo de solicitud POST en una variable
  $datosPost = $_POST;

  // Guardamos la tabla donde va el elemento a crear
  $nombreTabla = $datosPost['tabla'];
  // Quitamos la tabla de los datos
  unset($datosPost['tabla']);

  // Separamos los datos por columnas y valores
  $columnas = implode(", ", array_keys($datosPost));
  $valores = "'" . implode("', '", array_values($datosPost)) . "'";

  // Insertamos el elementos en la DB
  $sql = "INSERT INTO $nombreTabla ($columnas) VALUES ($valores)";
  $conexion->query($sql);

} else {
  http_response_code(400); // Solicitud incorrecta
}
?>