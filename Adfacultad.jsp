<%@page import="java.sql.*"%><%@page import="connection.ConnectionSac"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%><!DOCTYPE html><html lang="es"><head>	<meta charset="UTF-8">	<meta name="viewport" content="width=device-width, initial-scale=1">	<title>Sistema de Aseguramiento de la Calidad - Universidad de Ciencias Aplicadas y Ambientales U.D.C.A</title>	<div class="full-width navLateral-body-logo text-center tittles">	<!-- ********************   Colocar Referencias de Css -->	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>	<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>	<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>	<script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>	<meta charset='UTF-8'><meta name="robots" content="noindex">	<link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />	<link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />	<link rel="canonical" href="https://codepen.io/mevdschee/pen/BpbEbj?depth=everything&order=popularity&page=63&q=device&show_forks=false" />	<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>	<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.min.css'>		<!-- Para las Tablas --> 	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css"> 	<style class="cp-pen-styles"> {	  width: 75px;	  float: left;	  margin-right: 15px;	}		.form-group {	  max-width: 500px;	}		.actions {	  padding: 10px 0;	}		.glyphicon-euro {	  font-size: 12px;	}</style></head><body> 	</head><body> 	<!-- Colocar Menui Lateral si se amerita., --> <!-- Por ahora estoy haciendo Pruebas de la Informacion de la Tabla para que se pueda Ver., --> 	<% 	String usuario=session.getAttribute("correo").toString(); 	%>	<%	String facultad=session.getAttribute("idfacultad").toString();	%> 	<div class="container">		<div class="actions text-left">			    <h1>Adici�n Registro de Facultades</h1>	    	<p>Link: men� general / Datos Maestros / Facultades / Adicionar Facultad</a></p>	    	<hr size="3px" color="green"> <!-- Linea Verde -->	    </div>	    			    		    	    	</div>	 	<section class="full-width pageContent">	         <div class ="container" class="form-group text-center">	         <div class="card-body">				<!-- Adici�n del Autoincremento ----------------------------------------------------------->				<%				int idfacultad = 1;				try {						Connection con=ConnectionSac.getCon();					Statement stmt=con.createStatement();					String sql = "SELECT max(idfacultad) FROM facultad";					ResultSet rst = stmt.executeQuery(sql);							while (rst.next()) {							idfacultad = rst.getInt(1);							idfacultad = idfacultad + 1;						}						} catch (Exception e) {				}				%>				<!-- FIN Adici�n del Autoincremento ----------------------------------------------------------->				<form class="form-sign" action="AdfacultadAction.jsp" method="POST">					<div class="form-group text-center">						<figure class="text-center">							<h2></h2>						<figure class="text-center">							<!-- <h5 style="color: #198754">Bienvenido al M�dulo de Adici�n</h5> 							<h5 style="color: #198754">Por favor digite la informaci�n requerida y presione presione "Agregar" al finalizar</h5> -->					<div class="row">											<div class="col-md-2 mb-3">							<label for="codigoidfacultad" class="form-label" ># Reg.</label>							<input type="text" name="idfacultad" class="form-control" value="<%out.println(idfacultad);%>" readonly="readonly" required>						</div>						<div class="col-md-6 mb-3">							<label for="nombreFacultad" class="form-label">Nombre del Facultad</label> 							<input type="text" name="nombre_facultad"class="form-control" id="formGroupExampleInput" placeholder="Digite el Nombre de la Facultad para Agregar" required>						</div>																	<div class="col-md-4 mb-3">								<%																try{									Connection con=ConnectionSac.getCon();									Statement stmt=con.createStatement();									String sql="select idfacultad, nombre_facultad from FROM facultad order by idfacultad";									    ResultSet rst = stmt.executeQuery(sql);								%>									<label for="idfacultad" class="form-label">Facultad</label>									<select name="idfacultad" class="form-select" required>										<option selected></option>											<% while (rst.next()){											%>										<option value=<%=rst.getInt(1)%>><%=rst.getString(2)%></option>			  							<%}%>										</select>										<%										} catch (Exception e){											System.out.println(e);										}										%>							</div>						</div>						<div class="row">							<div class="col-md-4 mb-3">							     <!-- Pendiente Revisar Este Espacio Agosto 1 de 2022-->							</div>														<div class="col-md-4 mb-3">							     <!-- Pendiente Revisar Este Espacio Agosto 1 de 2022-->							 							</div>																				</div>					</div>					<div class="mb-3">						<div class="text-center" >																		<div class="row">						     <div class="col-md-6">						     	 <div class="actions text-left">					 									  <button style="background-color: #198754; color: #FFFFFF; border: #198754 1px solid" type="submit" name="accion" value="Agregar" class="btn btn-success">Agregar</button> 									  <a href="Lfacultades.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>								 </div>							 </div> 							    						</div>					</div>					<!-- <div class="row row-cols-lg-7 g-1">						<div class="col">							<div>							    <!-- Pendiente Revisar Este Espacio Agosto 1 de 2022-->							</div>						</div>					</div>				</form>			<%			String msg = request.getParameter("msg");			if ("valid".equals(msg)) {			%>			<figure class="text-center">				<strong class="text-center" style="color: #198754">Informaci�n, adicionada Exitosamente!</strong>				<%				}				%>				<%				if ("invalid".equals(msg)) {				%>				<figure class="text-center">					<strong class="text-center" style="color: #dc3545">No se pudo Agregar, por favor Intente nuevamente!</strong>					<%					}					%>			</div>	              	         </div>						</section>			<!-- Fin Tabla de Procesos Traida de la Base de Datos  -->		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>	</body></html>