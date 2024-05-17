<?php
// Cabecera comun para todos los controladores

// Iniciamos una sesion
session_start();

// Obtenemos el id del usuario loggeado
$user_id = $_SESSION['user_id'];

// Requerimos una sola vez la conexion a la DB y la funcion is_admin
require_once('../config/db.php');
require_once('../src/functions/is_admin.php');

// Si no obtenemos ningun id de usuario o el usuario no es admin
if (!isset($user_id) || !is_admin($user_id)) {
    // Mostramos el codigo de error 403 - Forbidden
    http_response_code(403);
  exit();
}

// Guardamos la conexion a la DB en una variable
$conexion = conectarDB();
?>