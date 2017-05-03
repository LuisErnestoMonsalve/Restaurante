<%-- 
    Document   : index
    Created on : 12/01/2017, 07:28:37 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<title>RESTAURANTE</title>

	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
<!--

Template 2076 Zentro

http://www.tooplate.com/view/2076-zentro

-->
	<link rel="stylesheet" href="faces/css/bootstrap.min.css">
	<link rel="stylesheet" href="faces/css/animate.min.css">
	<link rel="stylesheet" href="faces/css/font-awesome.min.css">
	<link rel="stylesheet" href="faces/css/nivo-lightbox.css">
	<link rel="stylesheet" href="faces/css/nivo_themes/default/default.css">
	<link rel="stylesheet" href="faces/css/style.css">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
        <jsp:include page="menu.jsp"></jsp:include>
</head>
<body>

<!-- preloader section -->
<section class="preloader">
	<div class="sk-spinner sk-spinner-pulse"></div>
</section>

<!-- navigation section -->



<!-- home section -->
<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h1>RESTAURANTE</h1>
				<h2>BIENVENIDO</h2>
				<a href="#gallery" class="smoothScroll btn btn-default">CONTINUAR</a>
			</div>
		</div>
	</div>		
</section>


<!-- gallery section -->
<section id="gallery" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
				<h1 class="heading">Platos</h1>
				<hr>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
				<a href="faces/images/gallery-img1.jpg" data-lightbox-gallery="zenda-gallery"><img src="images/gallery-img1.jpg" alt="gallery img"></a>
				<div>
					<h3>Cazuela de mariscos</h3>
					<span>Mariscos / Limón / Arroz</span>
				</div>
				<a href="faces/images/gallery-img2.jpg" data-lightbox-gallery="zenda-gallery"><img src="images/gallery-img2.jpg" alt="gallery img"></a>
				<div>
					<h3>Chefs Profesionales</h3>
					
				</div>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
				<a href="faces/images/gallery-img3.jpg" data-lightbox-gallery="zenda-gallery"><img src="images/gallery-img3.jpg" alt="gallery img"></a>
				<div>
					<h3>Platos Especiales</h3>
					
				</div>
			</div>
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
				<a href="faces/images/gallery-img4.jpg" data-lightbox-gallery="zenda-gallery"><img src="images/gallery-img4.jpg" alt="gallery img"></a>
				<div>
					<h3>Ensalada Cool</h3>
					<span>Huevo / Pepino / Tomate</span>
				</div>
				<a href="faces/images/gallery-img5.jpg" data-lightbox-gallery="zenda-gallery"><img src="images/gallery-img5.jpg" alt="gallery img"></a>
				<div>
					<h3>Pizza Rara</h3>
					<span>Pasta / Jamón / Queso</span>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- menu section -->
<section id="menu" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
				<h1 class="heading">Special Menu</h1>
				<hr>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Lemon-Rosemary Vegetable ................ <span>$20.50</span></h4>
				<h5>Chicken / Rosemary / Lemon</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Lemon-Rosemary Meat ........................... <span>$30.50</span></h4>
				<h5>Meat / Rosemary / Lemon</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Lemon-Rosemary Pork ........................ <span>$40.75</span></h4>
				<h5>Pork / Tooplate / Lemon</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Orange-Rosemary Salad .......................... <span>$55.00</span></h4>
				<h5>Salad / Rosemary / Orange</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Lemon-Rosemary Squid ...................... <span>$65.00</span></h4>
				<h5>Squid / Rosemary / Lemon</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Orange-Rosemary Shrimp ........................ <span>$70.50</span></h4>
				<h5>Shrimp / Rosemary / Orange</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Lemon-Rosemary Prawn ................... <span>$110.75</span></h4>
				<h5>Chicken / Rosemary / Lemon</h5>
			</div>
			<div class="col-md-6 col-sm-6">
				<h4>Lemon-Rosemary Seafood ..................... <span>$220.50</span></h4>
				<h5>Seafood / Rosemary / Lemon</h5>
			</div>
		</div>
	</div>
</section>		

<!-- contact section -->
<section id="contact" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
				<h1 class="heading">Contáctenos</h1>
				<hr>
			</div>
			<div class="col-md-offset-1 col-md-10 col-sm-12 wow fadeIn" data-wow-delay="0.9s">
				<form action="#" method="post">
					<div class="col-md-6 col-sm-6">
						<input name="name" type="text" class="form-control" id="name" placeholder="Name">
				  </div>
					<div class="col-md-6 col-sm-6">
						<input name="email" type="email" class="form-control" id="email" placeholder="Email">
				  </div>
					<div class="col-md-12 col-sm-12">
						<textarea name="message" rows="8" class="form-control" id="message" placeholder="Message"></textarea>
					</div>
					<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
						<input name="submit" type="submit" class="form-control" id="submit" value="Realizar Reserva">
					</div>
				</form>
			</div>
			<div class="col-md-2 col-sm-1"></div>
		</div>
	</div>
</section>


<!-- footer section -->
<footer class="parallax-section">
	<jsp:include page="Footer.jsp"></jsp:include>
</footer>


<!-- copyright section -->
<section id="copyright">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h3>ZENTRO</h3>
				<p>Copyright © Zentro Restaurant and Cafe 
                
                | Design: <a rel="nofollow" href="http://www.tooplate.com" target="_parent">Tooplate</a></p>
			</div>
		</div>
	</div>
</section>

<!-- JAVASCRIPT JS FILES -->	
<script src="faces/js/jquery.js"></script>
<script src="faces/js/bootstrap.min.js"></script>
<script src="faces/js/jquery.parallax.js"></script>
<script src="faces/js/smoothscroll.js"></script>
<script src="faces/js/nivo-lightbox.min.js"></script>
<script src="faces/js/wow.min.js"></script>
<script src="faces/js/custom.js"></script>

</body>
    
</html>
