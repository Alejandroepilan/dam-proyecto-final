<?php
// Incluimos la cabecera comun
include "../src/controllers/controller.header.php";

// Comprobamos que el metodo de solicitud sea POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
  // Obtenemos los datos enviados por el metodo de solicitud POST
  $tabla = $_POST["tabla"];
  $campoId = $tabla."_id";
  
  // Seleccionamos de la DB la ultima id
  $sql = "SELECT $campoId FROM $tabla ORDER BY $campoId DESC LIMIT 1";
  $resultado = $conexion->query($sql);
  $data = $resultado->fetch_assoc();
  $lastId = $data[$campoId];
  $newId = $lastId + 1;
  echo $newId;
} else {
  http_response_code(400); // Solicitud incorrecta
}
?>  