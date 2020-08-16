
<%@page import="modelo.Usuario"%>
<%@page import="modelo.PersonaDAO"%>

<%@page import="modelo.Plantilla"%>
<%@page import="java.util.List"%>
<%@page import="modelo.PlantillaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->3
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
              
                  <h1> INGRESO DE NOTAS </h1>              
          </div>
              
              
        <div class="form-group">
        
            <form align="left" action="ControladorPlantillaPaso" method="POST">
                     
          <%
                String plantilla = request.getParameter("dropPlantilla");
                //out.println(plantilla);
                

          %>
          
                    
       <br>
          NOMBRE USUARIO:
          
              
                  <select id="dropPlantilla" name="dropPlantilla">
                         <br>
                        <%
                          //       PersonaDAO nue = new PersonaDAO();
        Usuario ab = new Usuario();
                               //if(ab.getCargo().equals("Estudiante")){
                           // String sql ="SELECT * FROM usuario WHERE cargo='Estudiante'";   
                            PersonaDAO dao222 = new PersonaDAO();
                            List<Usuario>datos222=dao222.listarfiltro();
                            for(int i=0; i<datos222.size(); i++){
                            out.print("<option value="+datos222.get(i).getId()+">"+
                            datos222.get(i).getNombre()
                            +"</option>");
                            }
                            
                            
                             //  }
                        %>
                        <br>
                    
                </select>
               
               

               <br>
               CURSO:
               <input  class="form-control"   placeholder="nombre" type="text" name="txtnombre">
               
                              <br>
               PUNTEO:
               <input   class="form-control" placeholder="numeropaso" type="text" name="txtnumeropaso">
                                

              
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