

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <jsp:include page="menu.jsp"></jsp:include>
        <title>Login</title>
    </head>
    <body>    
        <c:if test="${param.error==1}">
            <font color="red">Usuario Invalido. Intentelo de nuevo</font>
        </c:if>     
        <div class="container well">
            <h1>Login</h1>
            <form action="UsuarioServlet?action=login" method="post">
                <table>
                    <tr>
                        <th>  <label><b>Nombre:</b></label> </th>
                        <th> 
                            <input type="text" placeholder="Ingrese Usuario" class="form-control" name="nombre" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th> <label><b>Constraseña:</b></label></th>
                        <th><input type="password" placeholder="Ingrese Contraseña" class="form-control" name="clave"
                                   required=""/> </th>
                    </tr>

                    <div class="break"></div>                        
                    </div>

                    <tr>
                        <td colspan="2">
                            <input class="btn btn-info btn-lg" type="submit" name="action" value="Login">
                            <span class="glyphicon glyphicon-lock"></span>

                            <!--			<span class="glyphicons glyphicons-user-add img-circle text-success"></span>-->

                            <input class="btn btn-info btn-lg" type="reset" name="action" value="Reset">
                            <span class="glyphicon glyphicon-remove"></span>
                        </td>
                    </tr>
                </table>
            </form>
            <br>
        </div>

    </body>
        <jsp:include page="Footer.jsp"></jsp:include>
</html>
