<?php

function conectar(){
	
	$db_dir="localhost";
	$db_usuario="root";
	$db_nombre="hotel";
	$db_clave="";
	
	$con=mysqli_connect($db_dir,$db_usuario,$db_clave)or die("Error al conectar".mysqli_error());
	mysqli_select_db($con,$db_nombre);
	return $con;
	
}

?>