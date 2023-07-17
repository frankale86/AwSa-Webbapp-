<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en" >
<head>

  <meta charset="UTF-8">
  <title>-------</title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css'>
  <link rel='stylesheet' href='https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css'>
  <link rel='stylesheet' href='https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css'>
  <link rel="stylesheet" href="./style.css">
  <link rel="stylesheet" href="css/main.css">
  

</head>
<body>

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

	<div class="full-width navLateral-body-logo text-center tittles">
		<i class="zmdi zmdi-close btn-menu"></i> S.A.C. 
	</div>
	
	<div class="row">

		<%
		String idarea=request.getParameter("idarea");
				
				try{
					Connection con=ConnectionSac.getCon();
					Statement stmt=con.createStatement();							
					String query="select * from area where idarea='"+ idarea +"'";
					ResultSet rs = stmt.executeQuery(query);
					
					while (rs.next()){
		%>
		<div class="container">
		      <div class="actions text-left">	
				    <h1>Información Básica</h1>
				   	<p>Link: menú general / Datos Maestros / áreas</a></p>         		    	
			  </div>
		</div>
		
		
		
			<div class="container mt-5 col-lg-6">
				<!--  -->					
				<form class="form-sign" action="EditarAreaAction.jsp" method="POST">		
					<div class="row">
						<div class="col-md-3 mb-3">
    						<label for="idearea" class="form-label">Id. Registro</label>
    						<input type="text" name="idarea" class="form-control" id="idarea" placeholder="Digite codigo del Área" value= "<%=rs.getString("idarea")%>" readonly="readonly">
  						</div>
  						<div class="col-md-9 mb-3">
    						<label for="nombreArea" class="form-label">Descripción Área</label>
    						<input type="text" name="nombreArea" class="form-control" id="nombreArea" placeholder="Digite nombre Área" value= "<%=rs.getString("nombreArea")%>" required>
  						</div>
  					</div>		  							  					
					<div>
					    <hr>							
			     		<a href="Adarea.jsp"><button type="submit" name="adicionar" class="btn btn-success">Actualizar Registro</button></a>
			     		<a href="Lareas.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>							
  					</div>
  				</form>

				<% 
					String msg=request.getParameter("msg");

					if ("valid".equals(msg)){
					%>
						<figure class="text-center">
						<p>
						<strong class="text-center" style="color:#198754">Información se actualizado correctamente!</strong>
					<% } %>
					<%
					if ("invalid".equals(msg)){
					%>
						<figure class="text-center">
						<p>
						<strong class="text-center" style="color:#dc3545">No se pudo modificar, este Registro en la base de datos, intentalo de nuevo!</strong>
				<% } %>
				
			<!--  -->
			<%
			}
			
		} catch (Exception e){
			System.out.println(e);
		}
		%>
	</div>
</body>


</html>
