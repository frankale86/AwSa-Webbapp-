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
		    <h2>Procesos para el Aseguramiento de la Calidad Institucional y de Programa</h2>
	    	<!-- <p>Link: / /</a></p> -->
	    </div>
		<hr>
   		
        <!-- Botones -->
	    <div class="actions text-right">		    
	 	    <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Descartar / Cancel</button></a>
		    <!-- <button type="button" class="btn btn-success">Enviar</button>  -->
   		 <p>
   	    </div>
	    <!-- Fin Botones -->
   		
   		
   		<!-- Cuerpo del Mensaje =========================== -->
		<div class="container">
		
			  <form class="form-horizontal" role="form">
			        <!-- .......... Tabs -->
	
	   		<div class="container bootstrap snippet">
	   		
			     <div class="row">
			 		 <div class="col-sm-12">
				          <ul class="nav nav-tabs  justify-content-center">
				              <li class="active"><a data-toggle="tab" href="#home">Obtenci�n del registro "Nuevo"</a></li>
				              <li><a data-toggle="tab" href="#messages">Renovaci�n registro</a></li>
				              <li><a data-toggle="tab" href="#registrom">Renovaci�n con modificaciones</a></li>
				              <!-- <li><a data-toggle="tab" href="#proceso">Proceso de Aseguramiento</a></li> -->
				          </ul>
				         
				          <div class="tab-content">
				              <div class="tab-pane active" id="home"> <!-- Informaci�n Obtenci�n Registro Nuevo  -->
				                   <p>
							       <!-- Botones 
								   <div class="actions text-left">		    
								 	    <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Descartar / Cancel</button></a>
									    <!-- <button type="button" class="btn btn-success">Enviar</button>  
							   		 <p>
							   	    </div>-->
				        		  <!-- Fin Botones -->
				              				              
					              <div id="timeline-c" class="timeline-c">
										<!-- Primeros 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">	 <!-- Esta es la Cajita Bonita con la puntica a la derecha -->						                    
							                    <!-- <h4 class="text-center text-condensedLight">Paso 1</h4> -->
							                    <div class="text-center">
							                    	Realizar "Estudio de Factibilidad" por parte de la Facultad, para evidenciar viabilidad del nuevo programa acad�mico.
							                    </div>
							                    
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>
            										
            										<!-- Colocar aqu� la Gu�a que me paso Yinita 16/Noviembre/2022
            										     O el Link al Jsp del Proceso para el Registro.,,
            										     A cordarse que cada uno de estos Procesos son Plantillas
            										     Las que hice con Marisol....
            										     Se necesita dise�o de Tablas para esta informaci�n -->
            										
            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										

												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
			
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 1</span>
			
							                </div>
							                
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content ">							                
							                    <!-- <h4 class="text-center text-condensedLight">Paso 2</h4> -->
							                    <p class="text-center">
							                    	<p>Presentar a la Direcci�n de Aseguramiento de la Calidad la propuesta del nuevo programa.<p>
							                    	Revisar y avalar "Estudio de Factibilidad" por parte de la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <!-- <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>Paso 2</span> -->
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 2</span>
							                    
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 3</h4> -->
							                    <p class="text-center">
							                    	Revisar y avalar "Estudio de Factibilidad" por parte del Comit� de Vicerrector�a.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 3</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-youtube"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 4</h4> -->
							                    <p class="text-center">
							                    	Presentar el"Estudio de Factibilidad" al Consejo Acad�mico para aprobaci�n.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 4</span>
							                </div>
							            </div>
										<!-- Fin Primeros 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
	
	
										<!-- Segundos 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- h4 class="text-center text-condensedLight">Paso 5</h4> --> 
							                    <p class="text-center">
							                    	Presentar el "Estudio de Factibilidad" al Consejo Directivo para aprobaci�n y generaci�n de Acuerdo de Creaci�n.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 5</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 6</h4> -->
							                    <p class="text-center">
							                    	Elaborar documento de "Preguntas Orientadoras" y los respectivos anexos.
							                    </p>
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 6</span>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>
                                                    <!-- <a href="PregistroNuevo.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a> -->            										            										
            										<a href="LregistroCalificadoN.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 7</h4> -->
							                    <p class="text-center">
							                    	Radicar documento "Preguntas Orientadoras" con anexos a la Direcci�n de Aseguramiento de la Calidad para retroalimentaciones.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 7</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-youtube"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 8</h4> -->
							                    <p class="text-center">
							                    	Ajustar el documento y radicar nuevamente a la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>           										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 8</span>
							                </div>
							            </div>
			
										<!-- Fin Segundos 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
	
	
										<!-- Terceros 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 9</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por cada uno de los l�deres de los procesos institucionales.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<!-- <a href="PregistroNuevo.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a> -->
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 9</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 10</h4> -->
							                    <p class="text-center">
							                    	Ajustar el documento y radicar nuevamente en la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 10</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 11</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por parte de Vicerrectoria General.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 11</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="1"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 12</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por parte de Rector�a.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 12</span>
							                </div>
							            </div>
										<!-- Fin Tercero 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
										<!-- Cuartos 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 13</h4> -->
							                    <p class="text-center">
							                    	Radicar en plataforma SACES MEN.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 13</span>
							                </div>
			
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 13</h4> -->
							                    <p class="text-center">
							                    	Verificar completitud de informaci�n en SACES MEN.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 13</span>
							                </div>
			
							            </div>
			
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 15</h4> -->
							                    <p class="text-center">
							                    	Recibir visita de pares acad�micos.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 15</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-info">
							                    <!-- <i class="1"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 16</h4> -->
							                    <p class="text-center">
							                    	Recibir Resoluci�n de Registro Calificado.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Proceso Registro Calificado -Nuevo"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 16</span>
							                </div>
							            </div>
			
										<!-- Fin Cuartos 4 -->								
									</div>
				              </div>
				             
<!--  -->
				             
				              <div class="tab-pane" id="messages"> <!-- Informaci�n Renovaci�n registro  -->
									<div id="timeline-c" class="timeline-c">
										<!-- Primeros 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    
							                    <!-- <h4 class="text-center text-condensedLight">Paso 1</h4> -->
							                    <div class="text-center">
							                    	Entrega primer Proceso de Autoevaluaci�n y Plan de Mejoramiento a la Direcci�n de Aseguramiento de la Calidad.
							                    </div>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus "></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
			
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 1</span>
			
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 2</h4> -->
							                    <p class="text-center">
							                    	Revisar primer Proceso de Autoevaluaci�n y Plan de Mejoramiento y generar concepto del mismo para sus respectivos ajustes.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <!-- <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>Paso 2</span> -->							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 2</span>
							                    
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 3</h4> -->
							                    <p class="text-center">
							                    	Entrega segundo Proceso de Autoevaluaci�n y Plan de Mejoramiento a la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 3</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-youtube"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 4</h4> -->
							                    <p class="text-center">
							                    	Revisar segundo Proceso de Autoevaluaci�n y Plan de Mejoramiento y generar concepto del mismo para sus respectivos ajustes.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 4</span>
							                </div>
							            </div>
										<!-- Fin Primeros 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
			
			
										<!-- Segundos 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- h4 class="text-center text-condensedLight">Paso 5</h4> --> 
							                    <p class="text-center">
							                    	Entrega tercer Proceso de Autoevaluaci�n y Plan de Mejoramiento a la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 5</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 6</h4> -->
							                    <p class="text-center">
							                    	Revisar tercer Proceso de Autoevaluaci�n y Plan de Mejoramiento y generar concepto del mismo para sus respectivos ajustes.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 6</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 7</h4> -->
							                    <p class="text-center">
							                    	Elaborar documento de "Preguntas Orientadoras" y los respectivos anexos.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 7</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-youtube"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 8</h4> -->
							                    <p class="text-center">
							                    	Radicar documento "Preguntas Orientadoras" con anexos a la Direcci�n de Aseguramiento de la Calidad para retroalimentaciones.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 8</span>
							                </div>
							            </div>
			
										<!-- Fin Segundos 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
			
			
										<!-- Terceros 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 9</h4> -->
							                    <p class="text-center">
							                    	Ajustar el documento y radicar nuevamente a la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 9</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 10</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por cada uno de los l�deres de los procesos institucionales.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 10</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 11</h4> -->
							                    <p class="text-center">
							                    	Ajustar el documento y radicar nuevamente en la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 11</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="1"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 12</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por parte de Vicerrectoria General.			
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 12</span>
							                </div>
							            </div>
										<!-- Fin Tercero 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
			
			
										<!-- Cuartos 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 13</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por parte de Rector�a.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 13</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 14</h4> -->
							                    <p class="text-center">
							                    	<P>Radicar en plataforma SACES MEN.</P>				                    	
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 14</span>
							                </div>
			
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 14</h4> -->
							                    <p class="text-center">
							                    	<P>Verificar completitud de informaci�n en SACES MEN.</P>                    	
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 14</span>
							                </div>
			
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 15</h4> -->
							                    <p class="text-center">
							                    	Recibir visita de pares acad�micos.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 15</span>
							                </div>
							            </div>
										<!-- Fin Cuartos 4 -->				
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-success">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 16</h4> -->
							                    <p class="text-center">
							                    	Recibir Resoluci�n de la Renovaci�n del Registro Calificado.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 16</span>
							                </div>
							            </div>
								 </div>				              
				              
				              </div>
		
<!--  -->
				              
				              <div class="tab-pane" id="registrom"> <!-- Informaci�n Renovacion Registro con Modificaciones  -->
								   <div id="timeline-c" class="timeline-c">
										<!-- Primeros 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    
							                    <!-- <h4 class="text-center text-condensedLight">Paso 1</h4> -->
							                    <div class="text-center">
							                    	Presentar los tres (3) Procesos de Autoevaluaci�n y Planes de Mejoramiento en sus respectivos momentos a la Direcci�n de Aseguramiento de la Calidad.
							                    </div>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
			
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 1</span>
			
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 2</h4> -->
							                    <p class="text-center">
							                    	Revisar los tres (3) Procesos de Autoevaluaci�n y Planes de Mejoramiento en sus respectivos momentos y generar concepto de los mismos para sus respectivos ajustes.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <!-- <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>Paso 2</span> -->
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 2</span>
							                    
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 3</h4> -->
							                    <p class="text-center">
							                    	Presentar a la Direcci�n de Aseguramiento de la Calidad las fichas t�cnicas de acuerdo con las modificaciones a realizar con base en los resultados de los procesos de autoevaluaci�n.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 3</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-youtube"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 4</h4> -->
							                    <p class="text-center">
							                    	Ajustar las fichas t�cnicas con base en las retroalimentaciones.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 4</span>
							                </div>
							            </div>
										<!-- Fin Primeros 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
			
			
										<!-- Segundos 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- h4 class="text-center text-condensedLight">Paso 5</h4> --> 
							                    <p class="text-center">
							                    	Revisar y avalar la ficha t�cnica con las modificaciones al Registro Calificado por parte de la Vicerrectoria General y el Subsistema Acad�mico.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 5</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 6</h4> -->
							                    <p class="text-center">
							                    	En caso de ser un programa de posgrado, presentar la ficha t�cnica con las modificaciones al Registro Calificado para aprobaci�n al Comit� de Maestr�as.
							                    </p>
			
							                    <p class="text-center">
							                    	Presentar la ficha t�cnica con las modificaciones al Registro Calificado al Consejo Acad�mico para aprobaci�n y generaci�n del acuerdo que aprueba dicha modificaci�n.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
			
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 6</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 7</h4> -->
							                    <p class="text-center">
							                    	Elaborar documento de "Preguntas Orientadoras" y los respectivos anexos.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 7</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-youtube"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 8</h4> -->
							                    <p class="text-center">
							                    	Radicar documento "Preguntas Orientadoras" con anexos a la Direcci�n de Aseguramiento de la Calidad para retroalimentaciones.
							                    </p>
							                    <!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 8</span>
							                </div>
							            </div>
			
										<!-- Fin Segundos 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
			
			
										<!-- Terceros 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 9</h4> -->
							                    <p class="text-center">
							                    	Ajustar el documento y radicar nuevamente a la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 9</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 10</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por cada uno de los l�deres de los procesos institucionales.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 10</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 11</h4> -->
							                    <p class="text-center">
							                    	Ajustar el documento y radicar nuevamente en la Direcci�n de Aseguramiento de la Calidad.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 11</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="1"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 12</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por parte de Vicerrectoria General.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 12</span>
							                </div>
							            </div>
										<!-- Fin Tercero 4 -->
										<!-- :=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:=:= -->
			
			
										<!-- Cuartos 4 -->
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-twitter"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 13</h4> -->
							                    <p class="text-center">
							                    	Revisar y aprobar el documento por parte de Rector�a.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 13</span>
							                </div>
							            </div>
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 14</h4> -->
							                    <p class="text-center">
							                       <P>Radicar en plataforma SACES MEN.</P>
							                    	Verificar completitud de informaci�n en SACES MEN.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    

							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 14</span>
							                </div>
							            </div>
			
							            <div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-facebook"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 15</h4> -->
							                    <p class="text-center">
							                    	Recibir visita de pares acad�micos.
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 15</span>
							                </div>
							            </div>
										<!-- Fin Cuartos 4 -->				
			
										<div class="timeline-c-box">
							                <div class="timeline-c-box-icon bg-danger">
							                    <!-- <i class="zmdi zmdi-whatsapp"></i> -->
							                </div>
							                <div class="timeline-c-box-content">
							                    <!-- <h4 class="text-center text-condensedLight">Paso 16</h4> -->
							                    <p class="text-center">
							                    	Recibir Resoluci�n de la Renovaci�n del Registro Calificado.			
							                    </p>
<!-- ............................................ Este es el Iconito Peque�o para Anexar Documentos -->							                    
							                    <div class="text-right">
            										<!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Fave"><span aria-hidden="true" class="glyphicon glyphicon-heart-empty"></span></a>  -->
            										<a href="Adprogramas.jsp" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Nuevo Registro de Programa / Nuevo Programa"><span aria-hidden="true" class="glyphicon glyphicon-plus"></span></a>
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Realizar Registro Proceso"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-cog"></span></a>
													<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Adjuntar Anexos al Proceso"><span aria-hidden="true" class="glyphicon glyphicon-paperclip"></span></a>            										
            										<a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Gu�as"><span aria-hidden="true" class="glyphicon glyphicon-tags"></span></a>
                                                    <!-- <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Calendario"><span aria-hidden="true" class="glyphicon glyphicon-calendar"></span></a> -->            										
												</div>            										
<!-- ............................................ Fin iconos Peque�os -->						                    
							                    
							                    <span class="timeline-date"><i class="zmdi zmdi zmdi-inbox zmdi-hc-fw"></i>Paso 16</span>
							                </div>
							            </div>
									</div>				              
				              </div>

<!--  -->
				              <div class="tab-pane" id="proceso"> <!-- Opcional comenzar Proceso Cargue de Archivos -->
				                   <p>
							       <!-- Botones -->
								   <div class="actions text-left">		    
								 	    <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Descartar / Cancel</button></a>
									    <!-- <button type="button" class="btn btn-success">Enviar</button>  -->
							   		 <p>
							   	    </div>
				        		  <!-- Fin Botones -->

<!-- Colocar aqui los 9 Factores en Persiana -->



				              

				              </div>
<!--  -->
				              
				         </div>
				        
					 </div>
				 </div>
			</div>
	
			      
			        <!-- .......... Fin Tabs -->
			  
			        <!-- Botones -->
				    <div class="actions text-right">		    
				 	     <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Descartar / Cancel</button></a>
					     <!-- <button type="button" class="btn btn-success">Enviar</button>  -->
			   			 <p>
			   	    </div>
			        <!-- Fin Botones -->	
			    
			  </form>
		</div>
		<!-- Fin Cuerpo del Mensaje -->
   		
   		<!-- Por si se quiere mostrar informacion por Tabs 
   		<div class="container bootstrap snippet">
		    <div class="row">
				<div class="col-sm-12">
			         <ul class="nav nav-tabs  justify-content-center">
			             <li class="active"><a data-toggle="tab" href="#home">Ministerio de Educaci�n Nacional (Men)</a></li>
			             <li><a data-toggle="tab" href="#messages">Consejo Nacional de Acreditaci�n (CNA)</a></li>
			         </ul>
			         
			         <div class="tab-content">
			         
			             <div class="tab-pane active" id="home">
		    		          <!-- ........Informaci�n Tab 
			             </div>
			             
			             <div class="tab-pane" id="messages">
		    		          <!-- ........Informaci�n Tab     		                	
			             </div>
			             
			        </div>
				</div>
			</div>
		</div>
		===========================-->
   		
   		
 	    <div class ="Text-center">		
		     <!-- Copyright  -->
		     <hr>
		     <h6>Universidad de Ciencias Aplicadas y Ambientales -UDCA</h6>
		     <h6>� 2022 - Desarrollado por Direcci�n de Aseguramiento de la Calidad -Udca. Sistema de Informaci�n, para el Aseguramiento de la Calidad Institucional</h6>
		</div>	
 			    		  
	    		  
	</div>
	    

     	



</body>


</html>