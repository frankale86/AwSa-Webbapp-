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

	    <!-- Esto es para colocar la línea Divisoria vertical -->
	    <link rel="stylesheet" href="./css/divider.css">	
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>	
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>    
	    <!-- Fin referencia línea Divisoria vertical -->
	    
	    <!-- Esto es para colocar la línea Divisoria vertical -->
	    <link rel="stylesheet" href="../css/divider.css">

	</head>

	<body>
		<!-- Comienso Nuevamente -->
		<div class="container">
			 <div class="actions text-left">	
			     <h3>Normatividad Vigente Miisterio de Educación Nacional (MEN), Consejo Nacional de Acreditación (CNA) e Institucional U.D.C.A</h3>
		    	 <p>Link: menú general / normatividad</a></p>
	         </div>
	    
			 <div class="actions text-left">
			    <a href="Adnormatividad.jsp"><button type="submit" name="adicionar" class="btn btn-success">Adicionar Registro</button></a>
			    <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>
	     		<p>
	     	 </div>
			 <hr size="3px" color="green"> <!-- Linea Verde -->
			 <ul class="nav nav-tabs">
			     <li class="active"><a data-toggle="tab" href="#menu1">Ministerio de Educación Nacional (MEN).</a></li>
			     <li><a data-toggle="tab" href="#menu2">Consejo Nacional de Acreditación (CNA).</a></li>
			     <li><a data-toggle="tab" href="#menu3">Normatividad Institucional U.D.C.A</a></li>
			 </ul>
		     <!-- ------------------------------------------------------- Linea Divisoria -->	
			  <div class="tab-content">
				   <div id="menu1" class="tab-pane fade in active">
				         <!-- Primer Grupo de Acordeón -->	   
					     <h3>Ministerio de Educación Nacional (MEN).</h3>
					     <!-- Tab 1 -->
						<div class="container">
						     <div class="row grid-divider">
							      <div class="col-sm-12">
		<!-- Table -->
							             <table id="ejemplo" class="table table-striped table-bordered" style="width:100%">
										        <thead>
													<tr>
														<th>Titulo</th>									
														<th>Descripción</th>									
														<th>Pdf</th>
																							
													</tr>
												</thead>					
												<tbody>
														<%
														try{
															Connection con=ConnectionSac.getCon();
															Statement stmt=con.createStatement();
															String query="SELECT * FROM normatividad WHERE  idtiponormatividad = 0;";
															ResultSet rs = stmt.executeQuery(query);
															while (rs.next()){
														%>
																	<tr>																																
																		<td><%=rs.getString(3)%></td>
																		<td><%=rs.getString(4)%></td>
																		<td> <div class="Text-center">
																		          <a href="<%=rs.getString(5)%>"><img src="img/inventario-configuracion.9ffb2be.png" width="30" height="30" /></a>
																		     </div>
																		</td>													
					
																		<td>     
																	      <div class="btn-group">
																	        <button class="btn dropdown-toggle" data-toggle="dropdown">
																	          Acciones
																	          <span class="caret"></span>
																	        </button>
																	        <ul class="dropdown-menu">
																	          <li><a href="EditarArea.jsp?idarea=<%=rs.getString(1)%> type="button">Actualizar</a></li>
																	          <li><a href="#">Detalles</a></li>												          
																	        </ul>
																	      </div>
																		</td>										
																														
																		<!-- 																																		
																		<div class="btn-group" role="group" aria-label="Basic outlined example">												     
						   												     <td><a title="Actualizar" type="button" href="EditarArea.jsp?idarea=<%=rs.getString(1)%>"><i class="fa fa-edit"></a></td>
																		</div>
																		 -->
																	</tr>											
															<%
															}
															}
														catch(Exception e)
														{
															System.out.println(e);
															}
														%>
													</tbody>
								    		</table>
		
		<!-- Fin Table -->					      
							      
										<hr size="5px" color="green">								    	
									    <div class="actions text-right">
										     <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>
								        </div>
							      </div>
						    </div>
						    						
						 </div>					     	     
					     <!-- Fin Tab 1 -->
				   </div>
				
				   <div id="menu2" class="tab-pane fade">         
				        <h3>Consejo Nacional de Acreditación (CNA).</h3>
					    <!-- Tab 2 -->
						<div class="container">
						     <div class="row grid-divider">				     
							      <div class="col-sm-12">
							           <table id="ejemplo2" class="table table-striped table-bordered" style="width:100%">
										      <thead>
													<tr>
														<th>Titulo del Área</th>									
														<th>Descripción</th>									
														<th>Pdf</th>
														<th>Acciones</th>									
													</tr>
											  </thead>					
											  <tbody>
														<%
														try{
															Connection con=ConnectionSac.getCon();
															Statement stmt=con.createStatement();
					 										String query="SELECT * FROM normatividad WHERE  idtiponormatividad = 1;";
					 										ResultSet rs = stmt.executeQuery(query);
					 										while (rs.next()){
														%>
																	<tr>																																
																		<td><%=rs.getString(3)%></td>
																		<td><%=rs.getString(4)%></td>
																		<td> <div class="Text-center">
																		          <a href="<%=rs.getString(5)%>"><img src="img/inventario-configuracion.9ffb2be.png" width="30" height="30"/></a>
																		     </div>
																		</td>													
																		<td>     
																	      <div class="btn-group">
																	        <button class="btn dropdown-toggle" data-toggle="dropdown">
																	          Acciones
																	          <span class="caret"></span>
																	        </button>
																	        <ul class="dropdown-menu">
																	          <li><a href="EditarArea.jsp?idarea=<%=rs.getString(1)%> type="button">Actualizar</a></li>
																	          <li><a href="#">Detalles</a></li>												          
																	        </ul>
																	      </div>
																		</td>										
																														
																		<!-- 																																	
																		<div class="btn-group" role="group" aria-label="Basic outlined example">												     
						   												     <td><a title="Actualizar" type="button" href="EditarArea.jsp?idarea=<%=rs.getString(1)%>"><i class="fa fa-edit"></a></td>
																		</div>
																		 -->
																	</tr>											
															<%
																}
													
															}catch(Exception e){
																System.out.println(e);
															}
															%>
												</tbody>
								    	</table>
										<hr size="5px" color="green">								    	
									    <div class="actions text-right">
										     <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>
								        </div>
								        
							      </div>		
						    </div>
						
						 </div>		     
					     	     
					     <!-- Fin Tab 2 -->	        
				   </div>
				
				   <div id="menu3" class="tab-pane fade">
					    <h3>Normatividad Institucional U.D.C.A</h3>
						<!-- Tab 3 -->
						<div class="container">
						     <div class="row grid-divider">				     
							      <div class="col-sm-12">
									    <table id="ejemplo2" class="table table-striped table-bordered" style="width:100%">
									        <thead>
												<tr>
													<th>Titulo del Área</th>									
													<th>Descripción</th>									
													<th>Pdf</th>
													<th>Acciones</th>									
												</tr>
											</thead>					
											<tbody>
													<%
													try{
														Connection con=ConnectionSac.getCon();
														Statement stmt=con.createStatement();
				 										String query="SELECT * FROM normatividad WHERE  idtiponormatividad = 2;";
				 										ResultSet rs = stmt.executeQuery(query);
				 										while (rs.next()){
													%>
																<tr>																																
																	<td><%=rs.getString(3)%></td>
																	<td><%=rs.getString(4)%></td>
																	<td> <div class="Text-center">
																	          <a href="<%=rs.getString(5)%>"><img src="img/inventario-configuracion.9ffb2be.png" width="30" height="30"/></a>
																	     </div>
																	</td>													
																	<td>     
																      <div class="btn-group">
																        <button class="btn dropdown-toggle" data-toggle="dropdown">
																          Acciones
																          <span class="caret"></span>
																        </button>
																        <ul class="dropdown-menu">
																          <li><a href="EditarArea.jsp?idarea=<%=rs.getString(1)%> type="button">Actualizar</a></li>
																          <li><a href="#">Detalles</a></li>												          
																        </ul>
																      </div>
																	</td>										
																													
																	<!-- 																																	
																	<div class="btn-group" role="group" aria-label="Basic outlined example">												     
					   												     <td><a title="Actualizar" type="button" href="EditarArea.jsp?idarea=<%=rs.getString(1)%>"><i class="fa fa-edit"></a></td>
																	</div>
																	 -->
																</tr>											
														<%
															}
												
														}catch(Exception e){
															System.out.println(e);
														}
														%>
												</tbody>
							    		</table>
										<hr size="5px" color="green">								    	
									    <div class="actions text-right">
										     <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>
								        </div>
							      </div>
						    </div>
						
						 </div>		     
					     <!-- Fin Tab 3 -->	 		    
				   </div>
		
				   <div class="text-center">			    		    
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


