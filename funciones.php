<?php

/*****************************************************

Biblioteca de funciones PHP
Versión 1.0
Autor: Pablo Gola
Revisores:

Registro de cambios:
Versión 1.0: Versión inicial

******************************************************/
/*----------------------------------------------------------------------------------*/
	function conectar_BD($servidor, $baseDatos, $usuario, $contraseña){		

		// Crea conexión
		$conexion = mysqli_connect($servidor, $usuario, $contraseña, $baseDatos);

		// Verifica la conexión
		if (!$conexion) {
			die("Falló la conexión a la base de datos. Error devuelto: " . mysqli_connect_error());			
		}		
		return $conexion;
		
	}

/*----------------------------------------------------------------------------------*/
	function buscar_registro ($conexion, $tabla, $filtros) {
		$filters = [];
		
		//creo el array que va a devolver el resultado
		$arrayResultado = array();
		
		//creo la consulta
		$consulta = 
			"SELECT * " .
			"FROM " . $tabla .
			" WHERE ";
		
		//cargo los nombres de campo
		foreach($filtros as $key => $valor) {
			$filters[] = $key . "=" . '"'.$valor.'"';
		}

		$consulta .= implode(' AND ', $filters);

		//consulto a la base de datos
		if ($resultados = mysqli_query($conexion, $consulta)) {// si la consulta es exitosa
			
			//cargo los resultados en un array
			while ($resultado = mysqli_fetch_assoc($resultados)){
				
				$arrayResultado[] = $resultado;
			}

			//devuelvo el array
			return $arrayResultado;
		}
		
		// Si la consulta no fue exitosa
		return false;
		
		
	}

/*----------------------------------------------------------------------------------*/
	function alta_registro ($conexion, $tabla, $datos){
		$keys = [];
		$values = [];
		
		//creo la consulta
		$consulta = 
			"INSERT INTO " . $tabla .
			" (";
		
		//cargo los nombres de campo

		foreach($datos as $key => $valor) {
			$keys[] = $key;
		}

		$consulta .= implode(',', $keys);

		reset($datos);

		$consulta = $consulta . ")
		VALUES (";

		//cargo los valores de los campos
		foreach($datos as $key => $valor) {
			$values[] = '"'.$valor.'"';
		}

		$consulta .= implode(',', $values);

		$consulta = $consulta . ")";

		//consulto a la base de datos
		if ($resultados = mysqli_query($conexion, $consulta)){ // Si la consulta fue exitosa
			
			//devuelve el id del registro ingresado	
			return mysqli_insert_id($conexion);	
		}
			
		// Si la consulta no fue exitosa
		return false;
		
	}

/*----------------------------------------------------------------------------------*/
	function baja_registro ($conexion, $tabla, $filtros){
		$filters = [];
			
		//creo la consulta
		$consulta = 
			"DELETE FROM " . $tabla .
			" WHERE ";
		
		//cargo los nombres de campo

		foreach($filtros as $key => $valor) {
			$filters[] = $key . "=" . '"'.$valor.'"';
		}

		$consulta .= implode(' AND ', $filters);
		
		//consulto a la base de datos
		if ($resultados = mysqli_query($conexion, $consulta)){ // si la consulta es exitosa
			
			// Devuelve la cantidad de filas que borró.
			return mysqli_affected_rows($conexion);
		}
		
		// Si la consulta no fue exitosa
		return false;
		
	}

/*----------------------------------------------------------------------------------*/
	function modificar_registro ($conexion, $tabla, $condiciones, $datos){
		$values = [];
		$wheres = [];
		
		//creo la consulta
		$consulta = 
			"UPDATE " . $tabla .
			" SET ";
		
		// cargo los campos y los nuevos valores
		foreach($datos as $key => $valor) {
			$values[] = $key . "=" . '"'.$valor.'"';
		}

		$consulta .= implode(',', $values);
		
		//cargo las condiciones
		$consulta = $consulta . " WHERE ";
		foreach($condiciones as $key => $valor) {
			$wheres[] = $key . "=" . '"'.$valor.'"';
		}

		$consulta .= implode(',', $wheres);
		
		// ejecuto la consulta
		$resultados = mysqli_query($conexion, $consulta);
		
		//devuelve true si modificó, false si no modificó.
		return $resultados;
	}

?>