<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
       <link rel="stylesheet" href="faces/style.css" type="text/css" media="all">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
<c:if test="${empty login}">
    
    <section class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">RESTAURANTE</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp" class="smoothScroll">Inicio</a></li>
                                <li><a href="login.jsp" class="smoothScroll">Iniciar Sesión</a></li>
                                <li><a href="newAccount.jsp" class="smoothScroll">Registrarse</a></li>
				
			</ul>
		</div>
	</div>
</section>
    
    </ul>
</c:if>
<c:if test="${not empty login}">
    <section class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">RESTAURANTE</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp" class="smoothScroll">Inicio</a></li>
				<li><a href="#gallery" class="smoothScroll">Menu De Platos</a></li>
				<li><a href="MeseroServlet?action=list" class="smoothScroll">Meseros</a></li>
                                <li><a href="UsuarioServlet?action=list" class="smoothScroll">Clientes</a></li>
				<li><a href="#contact" class="smoothScroll">Contactenos</a></li>
                                <li><a href="UsuarioServlet?action=logout" class="smoothScroll">Cerrar Sesión</a></li>
			</ul>
		</div>
	</div>
</section>
</c:if>

<hr/>
