package com.emergentes.modelo;

public class Post {
    private int id;
    private String fecha;
    private String titulo;
    private String contenido;
    
    public Post(){
        id = 0;
        fecha = "";
        titulo = "";
        contenido = "";
    }

    public int getId() {
        return id;
    }

    public String getFecha() {
        return fecha;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }
    
    
}
