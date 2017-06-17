<?php
	$conexion = mysqli_connect("localhost", "root", "","blog");
	$consulta = "INSERT INTO pedidos (maquina, tintas)
	VALUES 
	(" . $_POST["maquina"] . "," .
	$_POST["tintas"] . ")";

	echo $consulta;
	mysqli_query($conexion, $consulta);
	
?>