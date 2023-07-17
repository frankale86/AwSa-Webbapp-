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

		<!-- Desde aqui Links Para Ventana Modal -->		
		<link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">		
		<!-- Fin Link Ventana Modal -->

	</head>

	<body>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
	
		<!-- Comienso Nuevamente -->
		<div class="container">
			  <h2>Titulo Tabs</h2>
			  
			  <ul class="nav nav-tabs">
			    <li class="active"><a data-toggle="tab" href="#menu1">1. Info General IES.</a></li>
			    <li><a data-toggle="tab" href="#menu2">2. Oferta de la IES.</a></li>
			    <li><a data-toggle="tab" href="#menu3">3. Estudiantes.</a></li>
			    <li><a data-toggle="tab" href="#menu4">4. Listado Detallado de Profesores.</a></li>
			    <li><a data-toggle="tab" href="#menu5">5. Profesores Resume Contrato Formal.</a></li>
			    <li><a data-toggle="tab" href="#menu6">6. Profesores Movilidad.</a></li>
			    <li><a data-toggle="tab" href="#menu7">7. Investigación - Grupos y Profesores.</a></li>
			    <li><a data-toggle="tab" href="#menu8">8. Estudiante Movilidad.</a></li>
			    <li><a data-toggle="tab" href="#menu9">9. Estadisticas Bienestar.</a></li>
			    <li><a data-toggle="tab" href="#menu10">10. Proyección social o Extensión.</a></li>
			    <li><a data-toggle="tab" href="#menu11">11. Convenios.</a></li>
			  </ul>
			  
			  <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	
			  <div class="tab-content">
				   <div id="menu1" class="tab-pane fade in active">
				        <!-- Primer Grupo de Acordeón -->	   
					    <h4>1. Info General IES.</h4>
						<!-- Primer Grupo de accordion -->			    
						<div class="container">
						</div>			
				   </div>
			
				   <div id="menu2" class="tab-pane fade">
				            <!-- Segundo Grupo de Acordeón -->
					        <h4>2. Oferta de la IES.</h4>
							<div class="panel-body">			
							</div>
				   </div>
			
				   <div id="menu3" class="tab-pane fade">
				         <!-- Tercer Grupo de Acordeón -->
					     <h4>3. Estudiantes.</h4>
						 <div class="container">
				    	 </div>								
				   </div>
			
				   <div id="menu4" class="tab-pane fade">
				         <!-- Cuarto Grupo de Acordeón -->
					     <h4>4. Listado Detallado de Profesores.</h4>		 
				  		 <div class="container">
						 </div>
				   </div>
					
				   <div id="menu5" class="tab-pane fade">
				         <!-- Quinto Grupo de Acordeón -->
					     <h4>5. Profesores Resume Contrato Formal.</h4>
				  		 <div class="container">
						 </div>
									
					</div>
			
				    <div id="menu6" class="tab-pane fade">
					     <h4>6. Profesores Movilidad.</h4>				        
						 <!-- Sexto Grupo de accordion -->
						 <div class="container">
						 </div>
				    </div>	  	
							
				    <div id="menu7" class="tab-pane fade">
					     <h4>7. Investigación - Grupos y Profesores.</h4>				        
						 <!-- Septimo -->
						 <div class="container">
						 </div>
				    </div>	  	
			
				    <div id="menu8" class="tab-pane fade">
					     <h4>8. Estudiante Movilidad.</h4>				        
						 <!-- Septimo -->
						 <div class="container">
						 </div>
				    </div>	  	
			
				    <div id="menu9" class="tab-pane fade">
					     <h4>9. Estadisticas Bienestar.</h4>
						 <!-- Septimo -->
						 <div class="container">
						 </div>
				    </div>
				    
				    <div id="menu10" class="tab-pane fade">
					     <h4>10. Proyección Social o Extensión.</h4>				        
						 <!-- Septimo -->
						 <div class="container">
						 </div>
				    </div>		    
			
				    <div id="menu11" class="tab-pane fade">
					     <h4>11. Convenios.</h4>				        
						 <!-- Septimo -->
						 <div class="container">
						 </div>
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


