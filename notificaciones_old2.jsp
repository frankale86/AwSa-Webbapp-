<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html> 
 
<!--  -->
<head>
	<meta charset="ISO-8859-1">
	<title>Sistema de Aseguramiento de la Calidad - Universidad de Ciencias Aplicadas y Ambientales U.D.C.A</title>
	 
	<!-- Referentes para los Tabs -->
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="../css/tabs.css">
	<link rel="stylesheet" href="css/main.css">
	
	<link rel="stylesheet" href="css/notificaciones.css">
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<!-- Referentes para los Tabs -->
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="../css/tabs.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/main.css">
	
	
	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	
	<!-- Para el Email -->
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Fin -->

	
	
</head>


<!--  -->
<body>

	<!-- Colocar Menui Lateral si se amerita., -->
    <!-- Por ahora estoy haciendo Pruebas de la Informacion de la Tabla para que se pueda Ver., -->	
	<%
		String usuario=session.getAttribute("correo").toString();
		%>
	<%
	String facultad=session.getAttribute("idfacultad").toString();
	%> 
	
<!-- Parte superior Verde -->
	<div class="full-width navBar">
		<div class="full-width navBar-options">			
			<nav class="navBar-options-list">
				<ul class="list-unstyle">				
					<li class="text-condensedLight noLink" ><small>Nombre de Usuario</small>
					</li>
					
					<li class="noLink">
						<figure>
							<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
						</figure>
					</li>
					
				</ul>
			</nav>
		</div>
	</div> 

	<!-- navLateral  esta Seccion es la que divide el Area del Menu Lateral
	<section class="full-width navLateral">		
	</section>-->
	
			 
	<div class="full-width navLateral-body-logo text-center tittles">
		<i class="zmdi zmdi-close btn-menu"></i> S.A.C. 
	</div>
			
<!-- fin Parte superior Verde -->	
	
	<div class="container">
		<hr>
		<div class="actions text-left">	
		    <h1>Registro y Consulta de Notificaciones</h1>
	    	<p>Link: menú general / Notificaciones</a></p>
	    </div>
		<hr>
   		
   		<!-- Cuerpo del Mensaje =========================== -->
		<div class="container">
			 <form class="form-horizontal" role="form">			 
					<!--  Iconos 			  
					<div class="btn-toolbar">
						  <div class="btn-group">
						      <button class="btn" data-original-title="Bold - Ctrl+B"><i class="icon-bold"></i></button>
						      <button class="btn" data-original-title="Italic - Ctrl+I"><i class="icon-italic"></i></button>
						      <button class="btn" data-original-title="List"><i class="icon-list"></i></button>
						      <button class="btn" data-original-title="Img"><i class="icon-picture"></i></button>
						      <button class="btn" data-original-title="URL"><i class="icon-arrow-right"></i></button>
						  </div>
						  <div class="btn-group">
						      <button class="btn" data-original-title="Align Right"><i class="icon-align-right"></i></button>
						      <button class="btn" data-original-title="Align Center"><i class="icon-align-center"></i></button>
						      <button class="btn" data-original-title="Align Left"><i class="icon-align-left"></i></button>
						  </div>
						  <div class="btn-group">
						      <button class="btn" data-original-title="Preview"><i class="icon-eye-open"></i></button>
						      <button class="btn" data-original-title="Save"><i class="icon-ok"></i></button>
						      <button class="btn" data-original-title="Cancel"><i class="icon-trash"></i></button>
						  </div>
					</div>
					-->
					<!--  Fin Iconos -->
					
					<!-- Diseño Entorno de Notificaciones - Email -->
					
					
					
					<!-- Fin Entorno de Notificaciones - Email -->

					
				    <div class="actions text-right">		
			     		<a href="#.jsp"><button type="submit" name="adicionar" class="btn btn-success">Enviar Notificación</button></a>
			     		<a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning">Regresar / Cancel</button></a>
			     		<p>
			     	</div>


			  </form>
		</div>
		<!-- Fin Cuerpo del Mensaje -->
 	    <div class ="Text-center">		
		     <!-- Copyright  -->
		     <hr>
		     <h6>Universidad de Ciencias Aplicadas y Ambientales U.D.C.A</h6>
		     <h6>© 2022 - Desarrollado por Dirección de Aseguramiento de la Calidad U.D.C.A, Sistema de Información, para el Aseguramiento de la Calidad Institucional</h6>
		</div>	
 			    		  
	    		  
	</div>
	    

     	



</body>


</html>