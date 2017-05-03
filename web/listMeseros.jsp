<%-- 
    Document   : listAccount
    Created on : 11/01/2017, 09:02:32 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <jsp:include page="menu.jsp"></jsp:include>
    </head>
      
    <body>
    <link rel="stylesheet" href="faces/style2.css">
        <h1>Meseros</h1>
        <table>
            <tr>
            <th>CEDULA</th>
            <th>NOMBRE</th>
            <th>CORREO</th>
            <th>TELEFONO</th>
            <th>SALARIO</th>
            </tr>
        <c:forEach var="m" items="${mesero}">
            <tr>
            <td>${m.cedula}</td> 
            <td>${m.nombre}</td> 
            <td>${m.correo}</td> 
            <td>${m.telefono}</td>
            <td>${m.salario}</td>
            </tr>       
        </c:forEach>        
        </table>
    </body>
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
