<?php
// Incluimos la cabecera comun
include "controller.header.php";

// Comprobamos que el metodo de solicitud sea POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
  // Obtenemos los datos enviados por el metodo de solicitud POST
  $id = $_POST["id"];
  $tipoElemento = $_POST["tipoElemento"];
  $columnaId = $_POST["columnaId"];

  // Borramos el elemento de la DB
  $sql = "DELETE FROM $tipoElemento WHERE (`$columnaId` = '$id')";
  $conexion->query($sql);
} else {
  http_response_code(400); // Solicitud incorrecta
}
?>