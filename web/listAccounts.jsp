<%-- 
    Document   : listAccount
    Created on : 11/01/2017, 09:02:32 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="faces/style2.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        
    <head>
         
         <jsp:include page="menu.jsp"></jsp:include>
        
    </head>
      
    <body>
       
        <h1 >Usuarios Registrados</h1>
        <table>
            <tr>
            <th>CEDULA</th>
            <th>NOMBRE</th>
            <th>CORREO</th>
            <th>TELEFONO</th>
            </tr>
        <c:forEach var="u" items="${usuario}">
            <tr>
            <td>${u.cedula}</td> 
            <td>${u.nombre}</td> 
            <td>${u.correo}</td> 
            <td>${u.telefono}</td>
            <td> <a onclick="return confirm('Esta seguro?')" class="btn btn-small btn-danger" href=" UsuarioServlet?action=delete&cedula=${u.cedula}" >Borrar</a></td>
            </tr>
        </c:forEach>        
        </table>
    </body>
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
