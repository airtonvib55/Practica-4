<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Post"%>
<%@page import="com.emergentes.modelo.Post"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    Post post = (Post) request.getAttribute("post");
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
        
        

        <c:if test="${post.id == 0}">
        <h1>Nuevo Resgitro</h1>        
        </c:if>
        <c:if test="${post.id != 0}">
        <h1>Editar Resgitro</h1>        
        </c:if>

        
        <form action="" method="post">


            <input type="hidden" name="id" value="${post.id}">
            <label>
                fecha: <input type="date" name="fecha" value="${post.fecha}">
            </label>
            <br>
            <label>
                titulo: <input type="text" name="titulo" value="${post.titulo}">
            </label>
            <br>
            <label>
                contenido <input type="text" name="contenido" value="${post.contenido}">
            </label>
            <br>
            <input type="submit">
        </form>
        </center>
    </body>
</html>
