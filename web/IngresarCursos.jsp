<%-- 
    Document   : IngresarCursos
    Created on : 16/08/2020, 03:51:19 PM
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
    <body>
    <center>
        
    
          
              <div class="page-header">
              
                  <h1> ingresar curso</h1>              
          </div>
              
              
        <div class="form-group">
        
            <form align="left" action="ControladorCurso" method="POST">
             
          
                    

               <br>
               NOMBRE CURSO:
               <input   class="form-control"  placeholder="nombre_curso" type="text" name="txtnombre_curso">
               <br>
               CODIGO CURSO:
               <input   class="form-control" placeholder="codigo_curso" type="text" name="txtcodigo_curso">
               <br>
               SEMESTRE:
               <input  class="form-control"   placeholder="semestre" type="text" name="txtsemestre">
               <br>
               CICLO:
               <input  class="form-control"  placeholder="ciclo" type="text" name="txtciclo">
      
               <input  class="btn btn-success"  type="submit" name="accion"  value="Guardar">
              
            </form>
               
        </div>
        
    </center>
        
        
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
