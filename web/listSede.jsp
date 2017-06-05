<%-- 
    Document   : listSede
    Created on : 05-jun-2017, 14:03:00
    Author     : Luis Ernesto Monsalv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
       
        <h1 >SEDES</h1>
        <table>
            <tr>
            <th>COD</th>
            <th>NOMBRE</th>
            <th>DIRECCION</th>
            <th>TELEFONO</th>
            </tr>
        <c:forEach var="s" items="${sede}">
            <tr>
            <td>${s.cod}</td> 
            <td>${s.nombre}</td> 
            <td>${s.dirección}</td> 
            <td>${s.telefono}</td></tr>
        </c:forEach>        
        </table>
    </body>
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
