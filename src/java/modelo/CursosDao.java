/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jacob
 */
public class CursosDao {
    
    PreparedStatement ps; 
    ResultSet rs;
    Conexion c= new Conexion ();
    Connection con ;
    
    public List listar (){
    List <Cursos>lista =new ArrayList <>();
   String sql ="select *from curso";
    
    try{
    con = c.conectar(); 
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while (rs.next()){
        Cursos u= new Cursos();
        u.setId(rs.getString(1));
  
          u.setNombre_curso(rs.getString(2));
              u.setCodigo_curso(rs.getString(3));
            u.setSemestre(rs.getString(4));
           
                u.setCiclo(rs.getString(5));
           
                    lista.add(u);

    }
    
    }
    catch(Exception e){

    }
    return lista;
    }
    
    
        public List listarfiltro (){
    List <Usuario>lista =new ArrayList <>();
   String sql ="SELECT * FROM usuario WHERE cargo='Estudiante'";
    
    try{
    con = c.conectar(); 
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while (rs.next()){
        Usuario u= new Usuario();
        u.setId(rs.getString(1));
          u.setNombre(rs.getString(2));
            u.setApellido(rs.getString(3));
              u.setPass(rs.getString(4));
                u.setCorreo(rs.getString(5));
                  u.setUsuario(rs.getString(6));
                    u.setCargo(rs.getString(7));
                    
                    lista.add(u);

    }
    
    }
    catch(Exception e){

    }
    return lista;
    }
      public List listarFiltroCatedratico (){
    List <Usuario>lista =new ArrayList <>();
   String sql ="SELECT * FROM usuario WHERE cargo='Catedratico'";
    
    try{
    con = c.conectar(); 
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while (rs.next()){
        Usuario u= new Usuario();
        u.setId(rs.getString(1));
          u.setNombre(rs.getString(2));
            u.setApellido(rs.getString(3));
              u.setPass(rs.getString(4));
                u.setCorreo(rs.getString(5));
                  u.setUsuario(rs.getString(6));
                    u.setCargo(rs.getString(7));
                    
                    lista.add(u);

    }
    
    }
    catch(Exception e){

    }
    return lista;
    }
    
     
    public int agregar(Cursos p){
        int r=0;
    String sql ="insert into curso (nombre_curso,codigo_curso,semestre,ciclo)values(?,?,?,?)";
    try{
    con=c.conectar();
    ps=con.prepareStatement(sql);
   // ps.setString(1,p.getId());
      ps.setString(1,p.getNombre_curso());
        ps.setString(2,p.getCodigo_curso());
    
      ps.setString(3,p.getSemestre());
    
      ps.setString(4,p.getCiclo());

    
    
    
   r= ps.executeUpdate();
    if(r==1){
    r=1;
    }else{
    r=0;
    
    }
    }
    catch(Exception e){
    
    
    }
    return r;
    }
    


    
    
        public List listarfiltroo (){
    List <Usuario>lista =new ArrayList <>();
   String sql ="SELECT * FROM usuario WHERE cargo='Estudiante'";
    
    try{
    con = c.conectar(); 
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while (rs.next()){
        Usuario u= new Usuario();
        u.setId(rs.getString(1));
          u.setNombre(rs.getString(2));
            u.setApellido(rs.getString(3));
              u.setPass(rs.getString(4));
                u.setCorreo(rs.getString(5));
                  u.setUsuario(rs.getString(6));
                    u.setCargo(rs.getString(7));
                    
                    lista.add(u);

    }
    
    }
    catch(Exception e){

    }
    return lista;
    }
    
    
    public Usuario listarId(String id){
        
    String sql ="select *from usuario where id_usuario="+id;
    Usuario u =new Usuario();
    try {
    con=c.conectar();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next()){
    
    u.setId(rs.getString(1));
       u.setNombre(rs.getString(2));
          u.setApellido(rs.getString(3));
             u.setPass(rs.getString(4));
                u.setCorreo(rs.getString(5));
                   u.setUsuario(rs.getString(6));
                      u.setCargo(rs.getString(7));
    
    
    }
    
    
    }
    catch(Exception e){
    
    
    }
    return u;
    }

    public Usuario listarCorreo(String correo){
        
        System.out.println(correo);
    String sql ="select * from usuario where correo='"+correo+"'";
    Usuario u = new Usuario();
    try {
    con=c.conectar();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next()){
    
    u.setId(rs.getString(1));
       u.setNombre(rs.getString(2));
          u.setApellido(rs.getString(3));
             u.setPass(rs.getString(4));
                u.setCorreo(rs.getString(5));
                   u.setUsuario(rs.getString(6));
                      u.setCargo(rs.getString(7));
    
    
    }
    
    
    }
    catch(Exception e){
        System.out.println("Error del correo "+e);
    
    }
    return u;
    }
  public Usuario listarCargo(String cargo){
        
        System.out.println(cargo);
    String sql ="select * from usuario where cargo='"+cargo+"'";
    Usuario u = new Usuario();
    try {
    con=c.conectar();
    ps=con.prepareStatement(sql);
    rs=ps.executeQuery();
    while(rs.next()){
    
    u.setId(rs.getString(1));
       u.setNombre(rs.getString(2));
          u.setApellido(rs.getString(3));
             u.setPass(rs.getString(4));
                u.setCorreo(rs.getString(5));
                   u.setUsuario(rs.getString(6));
                      u.setCargo(rs.getString(7));
    
    
    }
    
    
    }
    catch(Exception e){
        System.out.println("Error del correo "+e);
    
    }
    return u;
    }

    
    public int actualizar (Cursos u){
        int r=0;
    String  sql="update curso set nombre_curso=?,codigo_curso=?,semestre=?,ciclo=? where id=? ";
    try{   
        con=c.conectar();
    ps=con.prepareStatement(sql);
    
    ps.setString(1,u.getNombre_curso());
        ps.setString(2,u.getCodigo_curso());
            ps.setString(3,u.getSemestre());
                ps.setString(4,u.getCiclo());
             
                           ps.setInt(5,Integer.parseInt(u.getId()));
                        
                        
                           
  r=ps.executeUpdate();
    
    if(r==1){
    
    r=1;
    
    }else{
    r=0;
            
    
    }
    }
    catch(Exception e){
            
            }
    return r;
    }
    
    
    public void delete(String id)
    {
    
    String sql="delete from curso where id=?";
    
    try{
        System.out.println("Codigo"+id);
        con=c.conectar();
        ps=con.prepareStatement(sql);
               ps.setInt(1,Integer.parseInt(id));
        ps.executeUpdate();
    }
    catch (Exception e){
    
        System.out.println("Error al eliminar"+e);
            
    
    }
    
    
    }    
}
