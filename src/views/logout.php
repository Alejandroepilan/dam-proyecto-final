<?php
// Iniciamos una sesion
session_start();

// Vaciamos la variable de sesion y destruimos todos los datos
session_unset();
session_destroy();

// Redireccionamos a la pagina de inicio
header("Location: /");
exit();
