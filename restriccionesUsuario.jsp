<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE>
<html>

	<head> 
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	    <!-- Esto es para colocar la línea Divisoria vertical 
	    <link rel="stylesheet" href="./css/divider.css">	
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>	
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->
		    
	    <!-- Fin referencia línea Divisoria vertical -->
	    <!-- Esto es para colocar la línea Divisoria vertical -->
	    <link rel="stylesheet" href="../css/divider.css">
	    

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


	</head>

	<body>
	

		<!-- integer SubProceso = 0; -->    
	    <!-- Detalles del Usuario Logueado -->    
		<%
	    	String usuario=session.getAttribute("correo").toString();
	    	%>
		<%
		String facultad=session.getAttribute("idfacultad").toString();
		%>

		<!-- control de AutoIncremente -->
						<%	int id = 1;
						try {
							Connection con=ConnectionSac.getCon();
							Statement stmt=con.createStatement();
							String sql = "SELECT max(cod_usuario) FROM usuarios";
							ResultSet rst = stmt.executeQuery(sql);
							while (rst.next()) {
								id = rst.getInt(1);
								id = id + 1;
								}
							} catch (Exception e) {
								
							}
						%>  
		<!-- Fin control de AutoIncremente -->
	
		<!-- Comienso Nuevamente -->
		<div class="container">
		  <h2>Registro de Usuarios.</h2>
		  <hr size="3px" color="green"> <!-- Linea Verde -->
		  <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#menu1">1. Información básica Usuario.</a></li>
		    <li><a data-toggle="tab" href="#menu2">2. Permisos y Restricciones.</a></li>
		    <!-- <li><a data-toggle="tab" href="#menu3">3. Información Institucional.</a></li>
		    <li><a data-toggle="tab" href="#menu4">4. Recurso Humano.</a></li>
		    <li><a data-toggle="tab" href="#menu5">5. Internacionalización.</a></li>
		    <li><a data-toggle="tab" href="#menu6">6. Investigación.</a></li>
		    <li><a data-toggle="tab" href="#menu7">7. Bienestar.</a></li>
		    <li><a data-toggle="tab" href="#menu8">8. Extensión.</a></li> -->|
		    
		                                                                                                                                          
		  </ul>
		  
		  <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	
		  <div class="tab-content">
			   <div id="menu1" class="tab-pane fade in active">			         	   
				     <h4><img src="img/png/direccion.png" width="50" height="50">1. Información básica Usuario.</h4>
				     <!-- Tab 1 -->
					<div class="container">
					     <div class="row grid-divider">
						      <div class="col-sm-6">
					      
						      </div>
						      
						      <div class="col-sm-6">
						      
						      </div>						      		
					    </div>
					
					 </div>		     
				     	     
				     <!-- Fin Tab 1 -->
				     
			   </div>
			
			   <div id="menu2" class="tab-pane fade">         
			        <h4><img src="img/png/direccion.png" width="50" height="50">2. Permisos y Restricciones.</h4>
				    <!-- Tab 2 -->
					<div class="container">
					     <div class="row grid-divider">				     
						      <div class="col-sm-6">

						      </div>
						      <div class="col-sm-6">

		
						      </div>
						      		
					    </div>
					
					 </div>		     
				     	     
				     <!-- Fin Tab 2 -->	        
			   </div>
			
			   <div class="text-center"> <br>
				    <img src="img/espacio.png" alt="Avatar" class="img-responsive" width="100" height="50">		    
				    <small>Universidad de Ciencias Aplicadas y Ambientales U.D.C.A.</small><p>
				    <small>Sistema de Información, para el Aseguramiento de la Calidad Institucional</small><br>
				    <small>Dirección de Aseguramiento de la Calidad U.D.C.A. © 2022</small><br>
					<small>Desarrollado por. wmvc</small>
			   </div>
					     
		  </div>  
		</div>
		<!-- Fin Comienso Nuevamente -->	
	
<!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	
	
		<!-- Ventana Modal -->
		<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
		<div class="container">
			<div class="row">			
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
								<h4 class="modal-title" id="myModalLabel"><i class="glyphicon glyphicon-volume-up"></i> Agregar comentario</h4>								
							</div>
							
							<div class="modal-body">
								<!-- <p><a title="Facebook" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x"></i></span></a> <a title="Twitter" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-twitter fa-stack-1x"></i></span></a> <a title="Google+" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-google-plus fa-stack-1x"></i></span></a> <a title="Linkedin" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-linkedin fa-stack-1x"></i></span></a> <a title="Reddit" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-reddit fa-stack-1x"></i></span></a> <a title="WordPress" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-wordpress fa-stack-1x"></i></span></a> <a title="Digg" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-digg fa-stack-1x"></i></span></a>  <a title="Stumbleupon" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-stumbleupon fa-stack-1x"></i></span></a><a title="E-mail" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-envelope fa-stack-1x"></i></span></a>  <a title="Print" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-print fa-stack-1x"></i></span></a></p> -->																
								<form action="" method="post">
									<div class="input-group">										
							            <label>Agregar comentario (Máximo 3500 caracteres con espacios):</label>
							            <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									</div>
									<br/>
									<br>									
									
								    <!-- <button type="submit" value="sub" name="sub" class="btn btn-primary"><i class="fa fa-share"></i> Subscribe Now!</button>  -->
									
								    <div class="actions text-left">		
							     		<a href=""><button type="submit" name="adicionar" class="btn btn-success">Guardar comentario</button></a>
							     		<!-- <a href=""><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a> -->
							     		<p>
							     	</div>
										
									
								</form>
							</div>
							
							<div class="modal-footer">
							        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
		<!-- Fin Ventana Modal -->		
		

	</body>


</html>


