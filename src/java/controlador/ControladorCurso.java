/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cursos;
import modelo.CursosDao;

/**
 *
 * @author jacob
 */
@WebServlet(name = "ControladorCurso", urlPatterns = {"/ControladorCurso"})
public class ControladorCurso extends HttpServlet {
CursosDao dao= new CursosDao();
Cursos u=new Cursos ();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorCurso</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorCurso at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        
        
        String accion =request.getParameter("accion");
      
           switch(accion){
               case "Listar":
    request.getRequestDispatcher("ListarCursos.jsp").forward(request, response);
    request.getRequestDispatcher("FiltroEstudiante.jsp").forward(request, response);
 
    break;
    case"Nuevo":
    request.getRequestDispatcher("IngresarCursos.jsp").forward(request, response);
//response.sendRedirect("IngresarCursos.jsp?dropPlantilla="+request.getParameter("dropPlantilla") );
    break;
    case "Guardar":
        
       // String id=request.getParameter("txtid");
                String nombre_curso=request.getParameter("txtnombre_curso");
                        String codigo_curso=request.getParameter("txtcodigo_curso");
                                String semestre=request.getParameter("txtsemestre");
                                        String ciclo=request.getParameter("txtciclo");
                                            
                                                      //  u.setId(id);
                                                        u.setNombre_curso(nombre_curso);
                                                        u.setCodigo_curso(codigo_curso);
                                                        u.setSemestre(semestre);
                                                           u.setCiclo(ciclo);
                                                 
                                                            
                                                            dao.agregar(u);
                                                            request.getRequestDispatcher("ControladorCurso?accion=Listar").forward(request, response);
        break;
        
   
        
    case "Delete":
       String id3=request.getParameter("id");
      
                 dao.delete(id3);
                   request.getRequestDispatcher("ControladorCurso?accion=Listar").forward(request, response);
                    
       
        
        break;
    
default:
    throw new AssertionError();

}
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
