<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en" >
<head>

  <meta charset="UTF-8">
  <title>Sistema de Información, para el Aseguramiento de la Calidad Institucional y de Programa...  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
  <!--  <link rel='stylesheet' href='https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css'> -->
  <link rel='stylesheet' href='https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css'>
  <link rel="stylesheet" href="./style.css">
  <link rel="stylesheet" href="css/main.css">

  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    

</head>
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
	      <div class="actions text-left">	
			    <h1>Listado General de Características -Institucionales</h1>
			   	<p>Link: menú general / Datos Maestros / Características -Institucionales</a></p>         		    	
		  </div>
		  
		  <form class="form-sign" action="Adarea.jsp" method="POST">
		  
		  <div class="row">
		       <div class="col-12" >
					<div class="actions text-left">		
			     		<a href="#.jsp"><button type="submit" name="adicionar" class="btn btn-success">Adicionar Registro</button></a>
			     		<a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>
			     		<p>
			     	</div>
			     	
			     	
		      		<table id="ejemplo" class="table table-striped table-bordered" style="width:100%">
					        <thead>
								<tr>						
								    <th>Reg.</th>		
									<th>Descripción Aspectos</th>
									<th>Estado</th>
									<th>Acciones</th>
								</tr>
							</thead>					
							<tbody>
									<%
									try{
										Connection con=ConnectionSac.getCon();
										Statement stmt=con.createStatement();
										String query="SELECT *, if(estado = 1, 'Activo','Inactivo') as estado FROM caracteristica_aspevaluar";
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()){
									%>
											<tr>											
											<td><%=rs.getString(1)%></td>
											<td><%=rs.getString(5)%></td>
											<td><%=rs.getString(7)%></td>

											<td>     
										      <div class="btn-group">
										        <button class="btn dropdown-toggle" data-toggle="dropdown">
										          Acciones
										          <span class="caret"></span>
										        </button>
										        <ul class="dropdown-menu">
										          <li><a href="#?idarea=<%=rs.getString(1)%> type="button">Actualizar</a></li>
										          <li><a href="#?idarea=<%=rs.getString(1)%> type="button">Activar</a></li>
										          <li><a href="#?idarea=<%=rs.getString(1)%> type="button">Inactivar</a></li>
										          <li><a href="#">Detalles</a></li>
										        </ul>
										      </div>
											</td>								
											
									<% }
										
									}catch(Exception e){
										System.out.println(e);
									}
									%>
							</tbody>
		    		</table>
		    	</div>
		  </div>
		  
		  </form>
		 
		  
	</div>
	<!-- partial -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.min.js'></script>
	<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
	<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap4.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js'>
	</script><script  src="./script.js"></script>
</body>


</html>
