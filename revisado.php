<?php include("funciones.php");
    $conexion = conectar_BD(
    "localhost",
    "repomek",
    "root",
    ""
   );   
    var_dump($_POST);
        
        if ($_POST)
        {
        alta_registro
            (
            $conexion,
            "pedidos_revisado",
            array(
            "codigo" => $_POST['codigo'],
            "insumo_revisado" => $_POST['tipos_de_insumos'],
            "tipo_cheque" => $_POST['tipo_cheque'],
            "tipo_planilla" => $_POST['tipo_planilla'],
            "tapas_revisado" => $_POST['tapas_revisado'],
            "contratapas_revisado" => $_POST['contratapas_revisado'],
            "cantidad" => $_POST['cantidad']
            )
             );
        }
?>

<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Mek - Revisado</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos.css" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="img/iconohead.ico">

       
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>
    <body>  
        <nav class="navbar navbar-default navbar-static-top">
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
                    <a class="navbar-brand" href="#">Mek</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.php">Inicio</a></li>
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

                        <li><a href="#">Proveedores</a></li>
                        <li><a href="#">Contacto</a></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Buscar">
                        </div>
                        <button type="submit" class="btn btn-default">Enviar</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Iniciar sesion</a></li>
                        <li><a href="#">Registro</a></li>
                    </ul>

                </div>
            </div>


        </nav>

  
<div class="container" style="
            margin-top: 39px;
            padding-top: 0px;
            height: 250px;
            padding-bottom: 0px;
            margin-bottom: 0px;
        ">
            <div class="jumbotron">
                <h1>Revisado</h1>
                
            </div>
        </div>

        
    <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend></legend>

<!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Codigo</label>  
          <div class="col-md-2">
          <input id="codigo" 
                name="textinput" 
                type="text" 
                placeholder="Ingrese un codigo" 
                class="form-control input-md" 
                required="">
            
          </div>
        </div>
<!-- Select Basic -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="insumo_revisado">Tipos de insumos</label>
          <div class="col-md-4">
            <select 
                    id="insumo_revisado" 
                    name="insumo_revisado" 
                    class="form-control">
              <option value="1">Ingrese un tipo de insumo</option>
              <option value="2">Tapas</option>
              <option value="3">Contratapas</option>
              <option value="4">Bandas elasticas</option>
              <option value="5">Bolsas plasticas</option>
              <option value="6">Rollo de lomo</option>
              <option value="7">Planillas</option>
            </select>
          </div>
        </div>

<!-- Select Basic -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="tipo_cheque">Tipos de cheques</label>
          <div class="col-md-4">
            <select 
                    id="tipo_cheque" 
                    name="tipo_cheque" 
                    class="form-control">
              <option value="1">Ingrese un tipo de cheque</option>
              <option value="2">Comun</option>
              <option value="3">Diferido</option>
            </select>
          </div>
        </div>

<div class="form-group">
  <label class="col-md-4 control-label" for="tipo_planilla">Tipos de planillas</label>
  <div class="col-md-4">
    <select 
           id="tipo_planilla" 
           name="tipo_planilla" 
           class="form-control">
      <option value="1">Ingrese un tipo de planilla</option>
      <option value="2">Provincia</option>
      <option value="3">Rio</option>
      <option value="4">Tierra del fuego</option>
      <option value="5">Frances</option>
      <option value="6">Generica</option>
    </select>
  </div>
</div>
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="tapas_revisado">Tapas</label>
  <div class="col-md-4">
    <select 
           id="tapas_revisado" 
           name="tapas_revisado" 
           class="form-control">
      <option value="1">Ingrese un tipo de tapa</option>
      <option value="2">Credicoop</option>
      <option value="3">Nacion</option>
      <option value="4">Provincia</option>
      <option value="5">Ciudad</option>
      <option value="6">Chubut</option>
      <option value="7">Chaco</option>
      <option value="8">Industrial</option>
      <option value="9">Frances</option>
      <option value="10">Patagonia</option>
      <option value="11">Rio Corporativa</option>
      <option value="12">Rio Select</option>
      <option value="13">Rio Infinity</option>
      <option value="14">Rio Infinity Gold</option>
      <option value="15">Rio Advanced</option>
      <option value="16">Piano</option>
      <option value="17">Comafi</option>
      <option value="18">Banco de valores</option>
      <option value="19">Caja de valores</option>
      <option value="20">Hipotecario</option>
      <option value="21">Finansur</option>
      <option value="22">Columbia</option>
      <option value="23">Corrientes</option>
      <option value="24">Galicia</option>
      <option value="25">Galicia Eminent</option>
      <option value="26">Galicia Eminent Cuenta corriente</option>
      <option value="27">Tierra del fuego</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="tipos_contratapas">Contratapas</label>
  <div class="col-md-4">
    <select 
           id="tipos_contratapas" 
           name="contratapas_revisado" 
           class="form-control">
      <option value="1">Ingrese un tipo de contratapa</option>
      <option value="2">Credicoop</option>
      <option value="3">Nacion</option>
      <option value="4">Provincia</option>
      <option value="5">Ciudad</option>
      <option value="6">Chubut</option>
      <option value="7">Chaco</option>
      <option value="8">Industrial</option>
      <option value="9">Frances</option>
      <option value="10">Patagonia</option>
      <option value="11">Rio</option>
      <option value="12">Piano</option>
      <option value="13">Banco de valores</option>
      <option value="14">Caja de valores</option>
      <option value="15">Hipotecario</option>
      <option value="16">Finansur</option>
      <option value="17">Columbia</option>
      <option value="18">Corrientes</option>
      <option value="19">Tierra del fuego</option>
      <option value="20">Generica (Blanca)</option>
    </select>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="cantidad">Cantidad</label>  
  <div class="col-md-2">
  <input 
        id="cantidad" 
        name="cantidad" 
        type="text" 
        placeholder="Ingrese una cantidad" 
        class="form-control input-md" 
         required="">
    
  </div>
</div>

<div class="form-group">
                <label class="col-md-4 control-label" 
                       for="enviar">
                </label>
                <div class="col-md-4">
                    <button id="enviar"
                            name="enviar" 
                            class="btn btn-primary">Enviar
                    </button>
                </div>
            </div>

</fieldset>

    <footer class="white-color hide-on-mobile">
    <div class="row">
        <div class="col-md-6">
            <div class="footer-logo">
                <img id="Img1" 
                    alt="Mek" 
                    src="img/iconohead.ico" 
                    height="35" 
                    width="35">
            </div>
        </div>
        <div class="col-md-6 text-right">
            <a class="footer-legales" href="#">Términos y Condiciones.</a>
        </div>
    </div>
    </footer>



        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>