<?php
include("funciones.php");//Incluye la funcion para el ABM de datos del formulario 
        $conexion = conectar_BD(
		"localhost", // Host de la base de datos
		"repomek", // Nombre de la base de datos
		"root", // Usuario
		"" // Contraseña
	);
        
        var_dump($_POST);

            if ($_POST)
            {
            alta_registro 
                (
                $conexion, // La referencia a la base de datos
                "pedidos", // La tabla en la que se dará de alta
                array("codigo" => $_POST['codigo'], "tipo_de_insumo" => $_POST['tipo_de_insumo'], "maquina" => $_POST['maquina'], "martillos" => $_POST['martillos'], "ribbon" => $_POST['ribbon'],"tractores" => $_POST['tractores'], "tintas" => $_POST['tintas'], "cantidad" => $_POST['cantidad']) // Los valores del registro "campo" => "valor"
                );
            }
?>

<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Mek - Impacto</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="img/iconohead.ico">

        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
    <body>  
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Este boton despliega la barra de navegacion</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                    <a class="navbar-brand" href="#">Mek - Impacto</a>
                </div>
<!--Barra de Menu Superior-->
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
<!--Acceso directo al Menu principal-->
                        <li><a href="index.php">Inicio</a></li>
<!--Inventario Menu desplegable hacia abajo-->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
                                Inventario <span class="caret"> </span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="laser.php">Laser</a></li>
                                <li><a href="impacto.php">Impacto</a></li>
                                <li><a href="bowe.php">Bowe</a></li>
                                <li><a href="slalom.php">Slalom</a></li>
                                <li><a href="revisado.php">Revisado</a></li>
                                <li><a href="despacho.php">Despacho</a></li>
                                
                            </ul> 
                        </li>
<!--Produccion Menu desplegable hacia abajo-->                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
                                Produccion <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Laser</a></li>
                                <li><a href="#">Impacto</a></li>
                                <li><a href="#">Bowe</a></li>
                                <li><a href="#">Slalom</a></li>
                                <li><a href="#">Revisado</a></li>

                            </ul>
                        </li>
<!--Proveedores Menu desplegable hacia abajo-->                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
                                Proveedores <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>

                            </ul>
                        </li>

<!--<li><a href="#">Contacto</a></li>-->
                    </ul>
                    
<!--Boton enviar-->
<!--                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Buscar">
                        </div>
                        <button type="submit" class="btn btn-default">Enviar</button>
                    </form>
                    -->
<!--Iniciar Sesion y Registro-->
<!--                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Iniciar sesion</a></li>
                        <li><a href="#">Registro</a></li>
                    </ul>-->

                </div>
            </div>


        </nav>

Jumbotron        
        <div class="container" style="
            margin-top: 39px;
            padding-top: 0px;
            height: 250px;
            padding-bottom: 0px;
            margin-bottom: 0px;
        ">
            <div class="jumbotron">
                <h1>Impacto</h1>
                
            </div>
        </div>

       
        
<form class="form-horizontal" method="POST" action="impacto.php" id="formulario_impacto" style="margin-top:;margin-top: 0px;" 800px;="" novalidate="novalidate">
            <fieldset>


                <div class="form-group">
                    <label class="col-md-4 control-label" for="codigo">Codigo</label>  
                    <div class="col-md-2">
                        <input id="codigo" name="codigo" type="text" placeholder="" class="form-control input-md" required="" aria-required="true">

                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="tipo_de_insumo">Tipo de insumo</label>
                    <div class="col-md-4">
                        <select id="tipo_de_insumo" name="tipo_de_insumo" class="form-control">
                            <option value="1">Tintas</option>
                            <option value="2">Martillos</option>
                            <option value="3">Ribbon</option>
                            <option value="4">Tractores</option>
                        </select>
                    </div>
                </div>

                <!-- Multiple Radios (inline) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="maquina">Maquina</label>
                    <div class="col-md-4"> 
                        <label class="radio-inline" for="maquina-0">
                            <input type="radio" name="maquina" id="maquina-0" value="1" checked="checked">
                            PRINTRONIX
                        </label> 
                        <label class="radio-inline" for="maquina-1">
                            <input type="radio" name="maquina" id="maquina-1" value="2">
                            IBM 6500
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="martillos">Martillos</label>
                    <div class="col-md-4">
                        <select id="martillos" name="martillos" class="form-control">
                            <option value="1">Spring 1500</option>
                            <option value="2">Spring 1505</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="ribbon">Ribbon</label>
                    <div class="col-md-4">
                        <select id="ribbon" name="ribbon" class="form-control" multiple="multiple">
                            <option value="1">P7210</option>
                            <option value="2">P5215</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="tractores">Tractores</label>
                    <div class="col-md-4">
                        <select id="tractores" name="tractores" class="form-control">
                            <option value="1">Generic 1500</option>
                            <option value="2">Generic 1505</option>
                        </select>
                    </div>
                </div>             
             
                <div class="form-group">
                    <label class="col-md-4 control-label" for="tintas">Tintas</label>
                    <div class="col-md-4">
                        <select id="tintas" name="tintas" class="form-control">
                            <option value="1">Alta penetrancia</option>
                            <option value="2">Negro penetrante</option>
                            <option value="3">Viro verde</option>
                            <option value="4">Invisible</option>
                            <option value="5">Negro fijo</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="codigo">Cantidad</label>  
                    <div class="col-md-2">
                        <input id="cantidad" name="cantidad" type="text" placeholder="" class="form-control input-md">

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="enviar"></label>
                    <div class="col-md-4">
                        <button id="enviar" name="enviar" class="btn btn-primary">Enviar</button>
                    </div>
                </div>

            </fieldset>
        </form>
            </fieldset>
        

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.validate.js"></script>
        <script >$("#formulario_impacto").validate();
        </script>

    </body>


