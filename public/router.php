<?php
/* 
Se que el router no deberia estar ubicado en la carpeta "public",
pero lo creé aqui y ahora no lo puedo cambiar de sitio.
Al intentarlo me deja de funcionar y no me encuentra los archivos con las diferentes paginas.
*/


// Requerir el archivo con la funcion de conexion a la DB
require_once('../config/db.php');

// Conectar a la DB para obtener las secciones de las ONG
$conexion = conectarDB();
$sql_tipos_ong = "SELECT link FROM ong_type";
$resultado = $conexion->query($sql_tipos_ong);
$tipos_ong = $resultado->fetch_all(MYSQLI_ASSOC);

// Obtener url de la pagina en la que nos encontramos
$url = $_SERVER['REQUEST_URI'];

// Creamos un foreach con un switch para que con los tipos de ong haga las distintas paginas
foreach ($tipos_ong as $tipo_ong) {
  switch ($url) {
    case '/'. $tipo_ong['link']:
      include '../src/views/ongs.php';
      break;
  }
}

// Creamos los switch para hacer el router
switch ($url) {
  case '/':
    include '../src/views/home.php';
    break;
  case '/login':
    include '../src/views/login.php';
    break;
  case '/register':
    include '../src/views/register.php';
    break;
  case '/logout':
    include '../src/views/logout.php';
    break;
  case '/profile':
    include '../src/views/profile.php';
    break;
  case '/admin':
    include '../src/views/admin.php';
    break;


  ////// API CRUD //////

  case '/api/create':
    include '../src/controllers/element.create.php';
    break; 
  case '/api/read':
    include '../src/controllers/element.read.php';
    break;   
  case '/api/update':
    include '../src/controllers/element.update.php';
    break;
  case '/api/delete':
    include '../src/controllers/element.delete.php';
    break;

  case '/api/newid':
    include '../src/controllers/newId.php';
    break;

  case '/api/profile-update':
    include '../src/controllers/profile.update.php';
    break;
  
  // Página de error 404 si la ruta no coincide a ninguno de los casos
  default:
    http_response_code(404);
    break;
}