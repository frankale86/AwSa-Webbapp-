<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="ISO-8859-1">
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		<title>Sistema de Aseguramiento de la Calidad - Universidad de Ciencias Aplicadas y Ambientales U.D.C.A</title>
		
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>				
			
		
	</head>

	<body>
	
	    <!-- Lo qu ele llega a la Forma -->
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
 
  <!-- Listado de Nuevos Campos
	 13 ...
	 14 ...
	 15 ...
	 16 ...
	 17 ...
	 18 ...
	 19 ...
	 20 ...
	 21 ...
	 22 ...
	 23 ...
	 24 ...
	 25 ...
	 26 ...
  	 27 ...
	 28 ...
	 29 ...
	 30 ...
  -->	

		<!-- Comenzar a Organizar Todo nuevo desde aca -->
        <div class="container">
		 	<div class="actions text-left">	
		 	     <h2>Registro de Usuarios</h2>
		     </div>
		    <hr size="3px" color="green"> <!-- Linea Verde -->
		</div>		
        <!-- Fin todo Nuevo desde aca -->		
	
		       		
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	   	<div class="row-fluid">
	       	<div class="span12">	       	
	       		<form class="form-horizontal" action="AdUsuarioAction.jsp" method="POST">
					<!-- Comienzan Todos los Tabs -->
					<div class="container">	  
						 <ul class="nav nav-tabs">
						    <li class="active"><a data-toggle="tab" href="#menu1">1. Información básica Usuario</a></li>
						    <li><a data-toggle="tab" href="#menu2">2. Permisos y Restricciones</a></li>
						 </ul>
						 
						 <div class="tab-content">		 
						     <div id="menu1" class="tab-pane fade in active">
						          <br>
						          <h4><img src="img/png/direccion.png" width="50" height="50">1. Información básica Usuario</h4>
							 	  <div class="panel-body">
			  					       <!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  -->
								       <div class="container">                              
								           <div class="row">
								                <div class="col-md-6">  <!-- Lado Izquierdo de la Pantalla -->
							                         Lado Izquierdo de la Pantalla				                        
								                </div>
								       <!-- Division de la Pantalla -->
								                <div class="col-md-6 mt-3">  <!-- Lado Derecho de la Pantalla -->
								                     Lado Derecho de la Pantalla
								                </div>
								           </div>						      
								       </div>	
								       <!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  -->
			                           <div class="controls">
			                                <button class="btn btn-success" type="submit">Adicionar Registro</button>
			                                <a href="#"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
			                           </div>					 	
								  </div>
								  <hr size="3px" color="green"> <!-- Linea Verde -->
							 </div>
					
					    	 <div id="menu2" class="tab-pane fade">
					    	     <br>
					    	     <h4><img src="img/png/direccion.png" width="50" height="50">2. Permisos y Restricciones</h4>			        
						 		 <div class="panel-body">
								<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  -->						
								      <div class="container">
								          <div class="row">
										      <div class="row grid-divider">
									               <div class="col-md-6 mt-3">
			
								                   </div>
									               
									               <div class="col-md-6 mt-3">
			               
									               </div>
			                                    </div> 							               
										  </div>
								      </div>	
								
								<!-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  -->
				                      <div class="control-group">
				                           <div class="controls">
				                                <button class="btn btn-success" type="submit">Adicionar Registro</button>
				                                <a href="#"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
				                           </div>
				                      </div>										 
										
								</div>
								<hr size="3px" color="green"> <!-- Linea Verde -->
							</div>
						   			     
					   </div>
					    
				   </div>
				   <!-- Fin Tabs -->	       		
	       		 
	       		</form>
       			<%
					String msg = request.getParameter("msg");
		
					if ("valid".equals(msg)) {
					%>
					<figure class="text-center">
					    
				    <!-- JOptionPane.showMessageDialog(null, "Operación realizada correctamente"); -->
					
					<strong class="text-center" style="color: #198754">Información, adicionada Exitosamente!</strong>
					<%
					}
					%>
					<%
					if ("invalid".equals(msg)) {
					%>
					<figure class="text-center">
						<strong class="text-center" style="color: #dc3545">No se pudo Agregar, por favor Intente nuevamente!</strong>
						<%
						}
						%>	       		
	       	</div>
	    </div>
pppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp
	

	
	</body>

</html>