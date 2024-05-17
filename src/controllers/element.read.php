<?php
// Incluimos la cabecera comun
include "../src/controllers/controller.header.php";

// Comprobamos que el metodo de solicitud sea POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
  // Obtenemos los datos enviados por el metodo de solicitud POST
  $id = $_POST["id"];
  $tipoElemento = $_POST["tipoElemento"];
  $columnaId = $_POST["columnaId"];
  
  // Seleccionamos el elemento de la DB
  $sql = "SELECT * FROM $tipoElemento WHERE (`$columnaId` = '$id')";
  $resultado = $conexion->query($sql);
  $data = $resultado->fetch_assoc();
  // Hacemos el resultado en forma de JSON
  $data_json = json_encode($data);
  // Devolvemos el JSON
  echo $data_json;
} else {
  http_response_code(400); // Solicitud incorrecta
}
?>