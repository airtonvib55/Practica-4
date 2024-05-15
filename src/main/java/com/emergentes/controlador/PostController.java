package com.emergentes.controlador;

import com.emergentes.dao.PostDAO;
import com.emergentes.dao.PostDAOimpl;
import com.emergentes.modelo.Post;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PostController", urlPatterns = {"/PostController"})
public class PostController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PostDAO dao = new PostDAOimpl();

        Post pt = new Post();
        int id;

        String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
        switch (action) {
            case "add":
                request.setAttribute("post", pt);
                request.getRequestDispatcher("frmpost.jsp").forward(request, response);
                break;
            case "edit":
                id = Integer.parseInt(request.getParameter("id"));

                try {
                    pt = dao.getById(id);
                } catch (Exception ex) {
                    System.out.println("Error al obtener resgitro " + ex.getMessage());
                }

                request.setAttribute("post", pt);
                request.getRequestDispatcher("frmpost.jsp").forward(request, response);

                break;

            case "delete":
                id = Integer.parseInt(request.getParameter("id"));

                try {
                    dao.delete(id);
                } catch (Exception ex) {
                    System.out.println("Error al eliminar: " + ex.getMessage());
                }

                response.sendRedirect("PostController");

                break;

            case "view":
                List<Post> lista = new ArrayList<Post>();
                try {
                    lista = dao.getAll();
                } catch (Exception ex) {
                    System.out.println("Error al listar "+ex.getMessage());
                }
                request.setAttribute("posts", lista);
                request.getRequestDispatcher("posts.jsp").forward(request, response);//raro

                break;
            default:
                //response.sendRedirect("posts.jsp"); //raro
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String fecha = request.getParameter("fecha");
        String titulo = request.getParameter("titulo");
        String contenido = request.getParameter("contenido");
        
        Post pt  = new Post();
        pt.setId(id);
        pt.setFecha(fecha);
        pt.setTitulo(titulo);
        pt.setContenido(contenido);
        
        
        PostDAO dao = new PostDAOimpl();
        if(id == 0){
            try {
                //nuevo
                dao.insertar(pt);
            } catch (Exception ex) {
                System.out.println("Error al insertar "+ex.getMessage());            }
        }else{
            try {
                dao.update(pt);
            } catch (Exception ex) {
                System.out.println("Error al editar "+ex.getMessage());            }
        }
        response.sendRedirect("PostController");
        
        
    }

}
