

<%@page import="modelo.Plantilla"%>
<%@page import="modelo.PlantillaDAO"%>
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
    <body>
     
  
    
    
    <center>
              <div class="form-group">
            <h3> Asignacion de cursos al estudiante </h3>
             <form action="ControladorPlantillaCampo" method="POST">
                 
                 
               
                        
                   
                     
              
                   <a class="btn btn-primary"  href="ListarPlantilla2.jsp"> ver mis cursos y notas  </a> <td>
       
                      
       
      
                <input  class="btn btn-success" type="submit" name="accion" value="Listar" >
                   <input  class="btn btn-primary" type="submit" name="accion"  value="Nuevo">
                   
                   
               
                   
                   
                   
           
                </form>
            
            </div>
        
          
                
            <div>
            <table  class="table table-striped" >
                <thead>
                    
                    <tr>
                  
                        <th>ID</th>
                   
                    
                          <th>NOMBRE CURSO</th>
                           <th>CODIGO CURSO</th>
                            <th>SEMESTRE</th>
                             <th>CICLO</th>
                             
                        
                        
                    </tr>
                </thead>   
                <tbody>
                    
                    
                       
                    
                    <%
                    PlantillaCampoDAO dao1 = new PlantillaCampoDAO();
                    
                    List<PlantillaCampo>datos1=dao1.listar();
                    
                    
                    
for (int i = 0; i < datos1.size(); i++) {
       
        %>
                
        <tr>
            
                <td><%=datos1.get(i).getId() %></td>
             
                <td><%=datos1.get(i).getNombre_campo() %></td>
                <td><%=datos1.get(i).getNumero_campo() %></td>
                <td><%=datos1.get(i).getDato() %></td>
                <td><%=datos1.get(i).getDescripcion() %></td>
                
                <td>
                
                    <form  action="ControladorPlantillaCampo" method="POST"  >
                        
                              <input type="hidden"  name="id" id="id"  value="<%=datos1.get(i).getId() %>" >
                              
                                   
                              <input  class="btn btn-success" type="submit"  name="accion" value="Editar" >
                                <input  class="btn btn-danger" type="submit" name="accion"  value="Delete">
                             
                             
                
                    
                    
                </form>
                
                
               
                
                </tr>           
                
        <%
    }
                    %>
                    
                    
                    
                </tbody>
                
            </table>
            
            
        </div>        
        
        
    </center>
       

    </body>
    
    
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>