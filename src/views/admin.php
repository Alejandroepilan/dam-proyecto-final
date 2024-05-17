<?php
include "../src/controllers/controller.header.php";

// Nombres tablas
$sql_tablas = "SHOW FULL TABLES WHERE TABLE_TYPE = 'BASE TABLE'";
$resultado_tablas = $conexion->query($sql_tablas);
$nombresTablas = $resultado_tablas->fetch_all(MYSQLI_ASSOC);
?>

<?php include '../src/components/header.php'; ?>

<body>

  <div class="min-h-screen bg-[#7A6F5D]">
    <?php include '../src/components/navbar.php'; ?>
    <div class="py-32 px-16 flex flex-col items-center">
      <div class="bg-white mb-16 w-full max-w-lg flex items-center justify-center p-6 shadow rounded-2xl ring-1 ring-black ring-opacity-5">
        <p class="text-2xl inline-block">Panel de administración</p>
      </div>

      <?php foreach ($nombresTablas as $nomTabla) :
        $nombreTabla = $nomTabla["Tables_in_ongmanager"];

        $sql_tabla = "SELECT * FROM $nombreTabla";
        $resultado_tabla = $conexion->query($sql_tabla);
        $nombreColumnas = $resultado_tabla->fetch_fields();
      ?>

      <div class="bg-white mb-16 w-full p-9 shadow rounded-2xl ring-1 ring-black ring-opacity-5">
        <div class="text-2xl inline-block font-semibold mb-4">
          <?php echo $nombreTabla; ?>
          <button onclick="abrirEditForm('<?php echo $nombreTabla; ?>')"><i class="fa-solid fa-plus ml-2 pointer"></i></button>
        </div>
        
        <form id='<?php echo $nombreTabla; ?>Form' method='post' class="hidden flex">
          <input type="hidden" name="tabla" value="<?php echo $nombreTabla; ?>">
          <?php
            $primerValor = true;
            foreach ($nombreColumnas as $columna) {
              echo "<input type='text' class='w-full mr-2 mb-4 bg-gray-100 px-4 py-2 rounded-md outline-none' name='$columna->name' ";
              
              if ($primerValor) {
                echo " readonly";
                $primerValor = false;
              }
              echo ">";
            }
          ?>
          <div class='h-full mb-4 py-2 px-8 flex'>
            <button class="mr-4" type='submit'><i class='fa-solid fa-check'></i></button>
            <button type="button" onclick="cerrarEditForm('<?php echo $nombreTabla; ?>Form')" ><i class='fa-solid fa-xmark'></i></button>
          </div>
        </form>

        
        <?php
          echo "<table class='min-w-full'><thead><tr>";
          // Mostrar nombres de las columnas
          foreach ($nombreColumnas as $columna) {
            echo "<th class='py-2 px-4 text-left border-b'>" . $columna->name . "</th>";
          }
          echo "<th class='py-2 px-4 text-left border-b text-center'>ACCIONES</th>";
          echo "</tr></thead><tbody>";

          // Mostrar los datos          
          $nombreColumnasArray = array_values((array) $nombreColumnas[0]);
          $columnaId = $nombreColumnasArray[0];

          while ($fila = $resultado_tabla->fetch_assoc()) {
            echo "<tr>";
            foreach ($fila as $valor) {
              echo "<td class='py-2 px-4 border-b'>" . $valor . "</td>";
            }
            echo '
            <td class="h-full py-2 px-4 border-b">
              <div class="flex justify-evenly">
                <button onclick="editarElemento('. $fila[$columnaId] .', \'' . $nombreTabla . '\', \'' . $columnaId . '\')"><i class="fa-solid fa-pen"></i></button>
                <button onclick="borrarElemento('. $fila[$columnaId] .', \'' . $nombreTabla . '\', \'' . $columnaId . '\')"><i class="fa-solid fa-trash-can"></i></button>
              </div>
            </td>';
            echo "</tr>";
          }
          echo "</tbody></table>";
        ?>   
      </div>
      <?php endforeach; ?>
    </div>
  </div>

  
  <script>
    var editandoElemento = false;

    function cerrarEditForm(formId) {
      $("#"+formId).addClass('hidden');
    }

    function abrirEditForm(tabla) {
      $("#"+tabla+"Form").removeClass('hidden');

      if (!editandoElemento) {
        $.ajax({
          type: "POST",
          url: "/api/newid",
          data: { tabla: tabla },
          dataType: "json",
          success: function(response) {
            $("input[name='" + tabla + "_id']").val(response);
          }
        });
      }
    }
    
    function editarElemento(id, tipoElemento, columnaId) {
      editandoElemento = true;

      abrirEditForm(tipoElemento);

      $.ajax({
        type: "POST",
        url: "/api/read",
        data: { 
          id: id,
          tipoElemento: tipoElemento,
          columnaId: columnaId,
        },
        dataType: "json",
        success: function(response) {
          $.each(response, function(nombreCampo, valorCampo) {
              $("input[name='" + nombreCampo + "']").val(valorCampo);
          });
        }
      });
    }

    $("form").submit(function(event) {
      event.preventDefault();
      var formId = $(event.target).attr('id');
      var formulario = document.getElementById(formId);
      var formData = new FormData(formulario);

      if (editandoElemento) {
        $.ajax({
            type: "POST",
            url: "/api/update",
            data: formData,
            dataType: "json",
            contentType: false,
            processData: false,
        });
        editandoElemento = false;
      }
      else {
        $.ajax({
            type: "POST",
            url: "/api/create",
            data: formData,
            dataType: "json",
            contentType: false,
            processData: false,
        });
      }

      location.reload();
    });

    function borrarElemento(id, tipoElemento, columnaId) {
      if (confirm("¿Estás seguro de eliminar este elemento?")) {
        $.ajax({
            type: "POST",
            url: "/api/delete",
            data: { 
              id: id,
              tipoElemento: tipoElemento,
              columnaId: columnaId
            },
            success: function() {
              location.reload();
            }
        });
      }
    }
  </script>

</body>
</html>

<?php
  // Cerramos la conexion con la DB
  $conexion->close();
?>