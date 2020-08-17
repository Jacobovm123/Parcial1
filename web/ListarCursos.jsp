<%-- 
    Document   : ListarCursos
    Created on : 16/08/2020, 03:51:35 PM
    Author     : jacob
--%>

<%@page import="modelo.Cursos"%>
<%@page import="java.util.List"%>
<%@page import="modelo.CursosDao"%>
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
  <body  >
        
        


      
    <center>
              <div class="form-group">
            <h3> Lista de cursos </h3>
             <form action="ControladorCurso" method="POST">
                       <a class="btn btn-primary"  href="MenuAdmin.jsp"> Menu principal </a> <td>
       
      
                <input  class="btn btn-success" type="submit" name="accion" value="Listar" >
                   <input  class="btn btn-primary" type="submit" name="accion"  value="Nuevo">
                </form>
            
            </div>
        
          
                
            <div>
            <table  class="table table-striped" >
                <thead>
                    
                    <tr>
                  
                        <th>ID</th>
                   
                         <th >NOMBRE CURSO</th>
                          <th>CODIGO CURSO</th>
                           <th>SEMESTRE</th>
                            <th>CICLO</th>
                      
                        
                        
                    </tr>
                </thead>   
                <tbody>
                       
                    
                    <%
                    CursosDao dao = new CursosDao();
                    
                    List<Cursos>datos=dao.listar();
                    
for (int i = 0; i < datos.size(); i++) {
       
        %>
                
        <tr>
            
                <td><%=datos.get(i).getId() %></td>
                <td><%=datos.get(i).getNombre_curso() %></td> 
                <td><%=datos.get(i).getCodigo_curso() %></td>
                <td><%=datos.get(i).getSemestre() %></td>
                <td><%=datos.get(i).getCiclo() %></td>
            
                <td>
                
                    <form  action="ControladorCurso" method="POST"  >
                              <input type="hidden"  name="id" id="id"  value="<%=datos.get(i).getId() %>" >
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
        
               <form align="left"  action="ControladorCurso" method="POST">
             
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
      
  
    
    
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
