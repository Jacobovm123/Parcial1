
<%@page import="modelo.Rol"%>
<%@page import="modelo.RolDAO"%>
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
              
                  <h1> ingresar plantilla paso</h1>              
          </div>
              
              
        <div class="form-group">
        
            <form align="left" action="ControladorPlantillaPaso" method="POST">
                     
          <%
                String plantilla = request.getParameter("dropPlantilla");
                out.println(plantilla);
                

          %>
          
                    
       <br>
          NOMBRE PLANTILLA:
                <select id="dropPlantilla" name="dropPlantilla">
                    
                        <%
                            PlantillaDAO dao = new PlantillaDAO();
                            List<Plantilla>datos=dao.listar();
                            for(int i=0; i<datos.size(); i++){
                            out.print("<option value="+datos.get(i).getId()+">"+
                            datos.get(i).getNombre()
                            +"</option>");
                            }
                        %>
                    
                    
                </select>
               
               
               <br>
               NUMERO DE PASO:
               <input   class="form-control" placeholder="numeropaso" type="text" name="txtnumeropaso">
               <br>
               NOMBRE:
               <input  class="form-control"   placeholder="nombre" type="text" name="txtnombre">
               
               
                                
       <br>
          NOMBRE ROL:
             <select id="dropaprobadores" name="dropaprobadores">
                    
                        <%
                            RolDAO dao2 = new RolDAO();
                            List<Rol>datos2=dao2.listar();
                            for(int i=0; i<datos2.size(); i++){
                            out.print("<option value="+datos2.get(i).getNombre()+">"+
                            datos2.get(i).getNombre()
                            +"</option>");
                            }
                        %>
                    
                    
                </select>
                        
                        
                        
                  
                     
               
               <br>
              
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