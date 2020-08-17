/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author jacob
 */
public class Cursos {
        
    String id;
     String nombre_curso;
      String codigo_curso;
       String semestre;
        String ciclo;


    public Cursos() {
        
    }
        public Cursos (String id,String nombre_curso,String codigo_curso,String semestre,String ciclo){
        
        this.id=id;
        this.nombre_curso=nombre_curso;
        this.codigo_curso=codigo_curso;
        this.semestre=semestre;
        this.ciclo=ciclo;
      
        
        }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre_curso() {
        return nombre_curso;
    }

    public void setNombre_curso(String nombre_curso) {
        this.nombre_curso = nombre_curso;
    }

    public String getCodigo_curso() {
        return codigo_curso;
    }

    public void setCodigo_curso(String codigo_curso) {
        this.codigo_curso = codigo_curso;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }

    public String getCiclo() {
        return ciclo;
    }

    public void setCiclo(String ciclo) {
        this.ciclo = ciclo;
    }
        
        
}
