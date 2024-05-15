
package com.emergentes.dao;

import com.emergentes.modelo.Post;
import com.emergentes.utiles.ConexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PostDAOimpl extends ConexionBD implements PostDAO{

    @Override
    public void insertar(Post post) throws Exception {
        String sql = "insert into posts (fecha, titulo, contenido) values (?,?,?)";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1, post.getFecha());
        ps.setString(2, post.getTitulo());
        ps.setString(3, post.getContenido());
        
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void update(Post post) throws Exception {
        String sql = "update posts set fecha = ?, titulo = ?, contenido = ? where id = ?";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1, post.getFecha());
        ps.setString(2, post.getTitulo());
        ps.setString(3, post.getContenido());
        ps.setInt(4, post.getId());
        
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void delete(int id) throws Exception {
        String sql = "delete from posts where id = ?";
        this.conectar();    
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public List<Post> getAll() throws Exception {
        List<Post> lista = null;
        String sql = "select * from posts order by fecha desc";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        
        ResultSet rs = ps.executeQuery();
        
        lista = new ArrayList<Post>();
        while(rs.next()){
            Post pt = new Post();
            pt.setId(rs.getInt("id"));
            pt.setFecha(rs.getString("fecha"));
            pt.setTitulo(rs.getString("titulo"));
            pt.setContenido(rs.getString("contenido"));
            
            lista.add(pt);
        }
        this.desconectar();
        return lista;
    }

    @Override
    public Post getById(int id) throws Exception {
        Post pt = new Post();
        String sql = "select * from posts where id =?";
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            pt.setId(rs.getInt("id"));
            pt.setFecha(rs.getString("fecha"));
            pt.setTitulo(rs.getString("titulo"));
            pt.setContenido(rs.getString("contenido"));
            
        }
        this.desconectar();
        return pt;
    }
}