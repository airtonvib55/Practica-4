<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Post"%>
<%
    List<Post> posts = (List<Post>) request.getAttribute("posts");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Blog de Tecnologia</h1>
        <h2>Autor: Javier Apaza</h2>
        <a href="PostController?action=add">Nueva entrada</a>

        <table>
            

            <c:forEach var="item" items="${posts}">
                <tr>
                    <th>${item.titulo}</th>
                </tr>

                <tr>
                    <td>${item.fecha}</td>
                </tr>
                <tr>
                    <td>${item.contenido}</td>
                </tr>
                <tr>
                    <td><a href="PostController?action=edit&id=${item.id}">Editar</a>
                        <a href="PostController?action=delete&id=${item.id}">Eliminar</a></td>

                </tr>
                <tr>
                    <td colspan="2"><hr></td>
                </tr>
            </c:forEach>
        </table>
    </center>
</body>
</html>
