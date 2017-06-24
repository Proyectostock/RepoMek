<?php
	$conexion = mysqli_connect("localhost", "root", "","repomek");
	$consulta = "INSERT INTO pedidos (codigo, tipo_de_insumo, maquina, martillos, ribbon, tractores, tintas, cantidad)
	VALUES 
	(" . $_POST["maquina"] . "," .
	$_POST["tintas"] . ")";

	echo $consulta;
	mysqli_query($conexion, $consulta);
	
?>