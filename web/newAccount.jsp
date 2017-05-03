<%-- 
    Document   : newLogin
    Created on : 11/01/2017, 08:56:35 PM
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <jsp:include page="menu.jsp"></jsp:include>
    </head>
    <body >
       
        
        <div class="container well">
            <h1 style="color: black">Registro</h1>
            <form action="UsuarioServlet?action=insert" method="post">

                <table>
                    <tr>
                        <th>  <label><b>Cedula:</b></label> </th>
                        <th> 
                            <input type="number" placeholder="Ingrese Cedula" class="form-control" name="cedula" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th>  <label><b>Nombre:</b></label> </th>
                        <th> 
                            <input type="text" placeholder="Ingrese Nombre" class="form-control" name="nombre" required=""/>
                        </th>
                    </tr>
                    <tr>
                        <th> <label><b>Contraseña:</b></label></th>
                        <th><input type="password" placeholder="Ingrese Contraseña" class="form-control" name="clave"
                                   required=""/> </th>
                    </tr>
          
                    <tr>
                        <th> <label><b>Correo:</b></label></th>
                        <th><input type="email" placeholder="Ingrese Correo" class="form-control" name="correo"
                                   required=""/> </th>
                    </tr>
                    <tr>
                        <th>  <label><b>Telefono:</b></label> </th>
                        <th> 
                            <input type="text" placeholder="Ingrese Telefono" class="form-control" name="telefono" required=""/>
                        </th>
                    </tr>

                    <div class="break"></div>                        
                    </div>
                    <tr>
                        <td colspan="2">
                            <input class="btn icon-btn btn-success" type="submit" name="action" value="Insertar">
                            <span class="glyphicon glyphicon-ok-sign"></span>

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
    <footer>
        <jsp:include page="Footer.jsp"></jsp:include>
    </footer>
</html>
