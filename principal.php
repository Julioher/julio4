<!doctype html>
<html>
<head>
<meta charset="utf8"/>

<?php



include ("conexion.php");
$con=conectar();


function ejecutar_consulta($labusqueda){ //inicio de la función ejecutar_consulta
	
$consulta= "select * from usuario where nombre like '%$labusqueda%' ";
$resultado= mysqli_query($con, $consulta);


while($fila=mysqli_fetch_array($resultado, MYSQL_ASSOC)){
	
	echo $fila ['id_usuario'] ." " ;
	echo $fila ['nombre'] ." " ;
	echo $fila ['apellido'] ." " ;
	echo $fila ['fecha_registro'] ." " ;
	echo "<br>";
}
}//fin de la función ejecutar_consulta


mysqli_close($con);
?>
</head>

<body>
<?php
	$mibusqueda= $_GET["buscar"];
	$mipag= $_SERVER["PHP_SELF"];
	if($mibusqueda!=null){
		 ejecuta_consulta($mibusqueda);
	}
	else {
	echo("<form action='". $mipag. "' method='get'>
	<label>Buscar:<input type='text' name='buscar'></label>
	<input type='submit' name='enviando' value='dale'></form>");
	}
	?>
</body>
</html>
?>