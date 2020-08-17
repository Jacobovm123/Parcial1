<%@page import="modelo.Usuario"%>
<%@page import="modelo.PersonaDAO"%>
<%@page import="modelo.PlantillaPaso"%>
<%@page import="modelo.PlantillaPasoDAO"%>
<%@page import="modelo.PlantillaCampo"%>
<%@page import="java.util.List"%>
<%@page import="modelo.PlantillaCampoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
  <body  >
        <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="campo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">CURSOS ASIGNADOS </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    
        
        
              <div class="form-group">
        
               <form align="left"  action="ControladorPlantillaCampo" method="POST">
             
                <tr>
                    
         
              <%
                String plantilla = request.getParameter("dropPlantilla");
               // out.println(plantilla);
                

          %>
                    
   
                <br>
                NOMBRE CURSO:
               <select  class="form-control" id="dropcampo" name="dropcampo">
                         <br>
                        <%
                            
                            PlantillaCampoDAO dao = new PlantillaCampoDAO();
                            
                            List<PlantillaCampo>datos=dao.listar2(plantilla);
                            for(int i=0; i<datos.size(); i++){
                            out.print("<option value="+datos.get(i).getId()+">"+
                            datos.get(i).getNombre_campo()
                            +"</option>");
                            }
                        %>
                        <br>
                    
                </select>
               
               
               <br>
                
                   SEMESTRE:
               <select  class="form-control" id="dropcampo" name="dropcampo">
                         <br>
                        <%
                     
                            for(int i=0; i<datos.size(); i++){
                            out.print("<option value="+datos.get(i).getId()+">"+
                            datos.get(i).getDato()
                            +"</option>");
                            }
                        %>
                        <br>
                    
                </select>
               
               
               <br>
              
             CICLO :
               <select  class="form-control" id="dropcampo" name="dropcampo">
                         <br>
                        <%
                     
                            for(int i=0; i<datos.size(); i++){
                            out.print("<option value="+datos.get(i).getId()+">"+
                            datos.get(i).getDescripcion()
                            +"</option>");
                            }
                        %>
                        <br>
                    
                </select>
    
            </form>
               
        </div>
        
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
     
      </div>
    </div>
  </div>
</div>
      
      <!-- Button trigger modal -->

   <div class="btn-group">
                    <button class="btn btn-success dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">REGRESAR A MENU ESTUDIANTE <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                     
                        <li><a href="FiltroEstudiante.jsp">REGRESAR A MENU ESTUDIANTE </a></li>
                    
                  
                    </ul>
                </div>
<!-- Modal -->
<div class="modal fade" id="pasos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Visualizacion de notas  </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
 <div class="form-group">
        
               <form align="left"  action="ControladorPlantillaPaso" method="POST">
             
                <tr>
                    
         
             
              <%
                String plantillav = request.getParameter("dropPlantilla");
              //  out.println(plantillav);
                

          %>
                    
   
                <br>
               NOMBRE CURSO  :
               <select  class="form-control" id="dropcampo" name="dropcampo">
                         <br>
                        <%
                            
                            PlantillaPasoDAO daov = new PlantillaPasoDAO();
                            
                            List<PlantillaPaso>datosv=daov.listar2(plantillav);
                            for(int i=0; i<datosv.size(); i++){
                            out.print("<option value="+datosv.get(i).getId()+">"+
                            datosv.get(i).getNombre()
                            +"</option>");
                            }
                        %>
                        <br>
                    
                </select>
                    <br>
                NOTA :
               <select  class="form-control" id="dropcampo" name="dropcampo">
                         <br>
                        <%
                            
                   
                            for(int i=0; i<datosv.size(); i++){
                            out.print("<option value="+datosv.get(i).getId()+">"+
                            datosv.get(i).getNumero_pasos()
                            +"</option>");
                            }
                        %>
                        <br>
                    
                </select>
            
               
         
                        
         

            </form>
               
        </div>
        
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar </button>

      </div>
        
    </div>
  </div>
</div>
      
      
    
    

  
  
  
  
    <center>
              <div class="form-group">
            <h3> visualizar mis cursos </h3>
            
         
                        <form action="ControladorPlantillaPaso" method="POST">
                 
                 
                  <select id="dropPlantilla" name="dropPlantilla">
                         <br>
                        <%
                            PersonaDAO dao222 = new PersonaDAO();
                            List<Usuario>datos222=dao222.listarfiltro();
                            for(int i=0; i<datos222.size(); i++){
                            out.print("<option value="+datos222.get(i).getId()+">"+
                            datos222.get(i).getNombre()
                            +"</option>");
                            }
                        %>
                        <br>
                    
                </select>
                        
                          <input  class="btn btn-success" type="submit" name="accion" value="ver" >
                   
                </form>   
                        
                        
                      
                        
   
             <form action="ControladorPlantilla2" method="POST">
 
                                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#campo">
 ver mis cursos 
</button>
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#pasos">
  ver mis notas 
</button>
                 
                      
       
                    
                </form>
                       
            </div>
        
          
              
        
        
    </center>
        
      
    </body>
    
    
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>