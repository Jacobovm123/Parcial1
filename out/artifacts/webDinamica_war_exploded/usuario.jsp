

<%@page import="modelo.PersonaDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>

<%-- 
    Document   : newjs
    Created on : 19/08/2019, 12:49:07 AM
    Author     : jacob
--%>

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
        
        
        <a class="btn btn-primary"  href="ListarRol.jsp">Listar Rol </a> <td>
         <a class="btn btn-primary"  href="IngresoRol.jsp">ingreso rol </a> <tr>
          <a class="btn btn-primary"  href="ListarUsRol.jsp">Listar usuario rol </a> <tr>
         <a class="btn btn-primary"   href="IngresoUsRol.jsp">ingreso usuario rol </a> 
        
        <a class="btn btn-primary"  href="EditarUsuario.jsp">editar </a> 
      
    <center>
              <div class="form-group">
            <h3> Lista de usuarios </h3>
             <form action="Controlador" method="POST">
                <input  class="btn btn-success" type="submit" name="accion" value="Listar" >
                   <input  class="btn btn-primary" type="submit" name="accion"  value="Nuevo">
                </form>
            
            </div>
        
          
                
            <div>
            <table  class="table table-striped" >
                <thead>
                    
                    <tr>
                  
                        <th>ID</th>
                   
                         <th >NOMBRE</th>
                          <th>APELLIDO</th>
                           <th>PASS</th>
                            <th>CORREO</th>
                             <th>USUARIO</th>
                              <th>CARGO</th>
                        
                        
                    </tr>
                </thead>   
                <tbody>
                       
                    
                    <%
                    PersonaDAO dao = new PersonaDAO();
                    
                    List<Usuario>datos=dao.listar();
                    
for (int i = 0; i < datos.size(); i++) {
       
        %>
                
        <tr>
            
                <td><%=datos.get(i).getId() %></td>
                <td><%=datos.get(i).getNombre() %></td> 
                <td><%=datos.get(i).getApellido() %></td>
                <td><%=datos.get(i).getPass() %></td>
                <td><%=datos.get(i).getCorreo() %></td>
                <td><%=datos.get(i).getUsuario() %></td>
                <td><%=datos.get(i).getCargo() %></td> 
                <td>
                
                    <form  action="Controlador" method="POST"  >
                              <input type="hidden"  name="id"  value="${datos.getId()}" >
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