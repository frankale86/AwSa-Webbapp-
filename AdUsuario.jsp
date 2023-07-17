<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
	
    <!-- Maneja los Tabs -->	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


	<!-- Maneja Division de la Pantalla y campos de texto gorditos -->
	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css"> 
	<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>	

	<meta charset="ISO-8859-1">
	     <title>Sistema de Aseguramiento de la Calidad - Universidad de Ciencias Aplicadas y Ambientales U.D.C.A</title>
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
    
 	
	<div class="container">
		<div class="actions text-left">		
		    <h2>Registro de Usuarios -Permisos y Restricciones de Condiciones Institucionales y de Programas.</h2>
			 <a><b><%
			 System.out.println("Usuario Activo : " + usuario);
			 %></b></a>		    	    	
	    	<hr size="3px" color="green"> <!-- Linea Verde -->
	    </div>
	    
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

<!-- ================================================================================================= -->					       
<!-- Espacio en Blanco -->					  
<!-- ================================================================================================= -->					       


<!-- *****************************************************   *Manejo de Tabs -->
			<div class="container">
				 <ul class="nav nav-tabs">
				     <li class="nav-item">
				         <a class="nav-link active" data-toggle="tab" href="#home">1. Informaci�n B�sica Usuario.</a>
				     </li>
				     <li class="nav-item">
				         <a class="nav-link" data-toggle="tab" href="#menu1">2. Permisos y Restricciones.</a>
				     </li>
				     <li class="nav-item">
				         <a class="nav-link" data-toggle="tab" href="#menu2">3. Otra Informaci�n de Usuario.</a>
				     </li>
				 </ul>
			
				 <!-- Tab panes -->
				 <div class="tab-content">
					  <!-- Contenido Tab -->
					  <div id="home" class="container tab-pane active"><br>
					       <h3><img src="img/png/direccion.png" width="50" height="50">1. Informaci�n B�sica Usuario.</h3>
					  <!-- Contenido Tab 1 -->					       					       
						   	<div class="row-fluid">
						       	<div class="span12">	       	
						       		<form class="form-horizontal" action="AdUsuarioAction.jsp" method="POST">        
							              <div class="span6">
							                   <div class="area">						                        
								                    <div class="control-group">
							                            <label class="control-label">Registro Usuario Nro.</label>	
							                            <div class="controls">
					<!-- 1  -->  							 <input type="text" id="cod_usuario" name="cod_usuario" class="form-control" value="<%out.println(id);%>" readonly="readonly">
							                            </div>
							                        </div>	 	   	
					   
					   		                        <div class="control-group">
								                        <label class="control-label">Fecha de Registro</label>
								                        <div class="controls">								
					<!-- 12 -->							 <input type="date" id="registro" name="registro" class="form-control">
													    </div>
												    </div>
												    
					   		                        <div class="control-group">
							                            <label class="control-label">N�mero de Identificaci�n</label>		
							                            <div class="controls">
					<!--2  -->                                <input type="text" id="doc" name="doc" class="form-control" placeholder="N�mero de Identificaci�n" type="text" >
							                            </div>
							                        </div>
					   
					   
					   		                        <div class="control-group">
							                            <label class="control-label">Nombres Completos del Usuario</label>		
							                            <div class="controls">
					<!--4 -->                                <input type="text" id="nombres" name="nombres" class="form-control" placeholder="Nombres Completo Usuario" >
							                            </div>
							                        </div>
					 
					   
					   		                        <div class="control-group">
							                            <label class="control-label">Apellidos Completos del Usuario</label>		
							                            <div class="controls">
					<!--5 -->                                <input type="text" id="apellidos" name="apellidos" class="form-control" placeholder="Apellidos Completos del Usuario" >
							                            </div>
							                        </div>   
					   
					   
					   		                        <div class="control-group">
							                            <label class="control-label">Correo Institucional</label>		
							                            <div class="controls">
					<!--6 -->                                <input type="text" id="correo" name="correo" class="form-control" placeholder="@udca.edu.co" >
							                            </div>
							                        </div>   
					 
					   
					   		                        <div class="control-group">
							                            <label class="control-label">Contrase�a / Password</label>		
							                            <div class="controls">
					<!--7 -->                                <input type="text" id="psw" name="psw" class="form-control" placeholder="Contrase�a / Password" >
							                            </div>
							                        </div>							                           
					   							</div>
					   							
					   					</div>
					<!-- .......................................................................    Segunda mitad de la Ventana -->
							            
							            <div class="span6">
							                <div class="area">
							                		                
							                    <div class="control-group">
						                            <label class="control-label">N�mero de Contacto</label>	
						                            <div class="controls">
					<!--8 -->                            <input type="text" id="cel" name="cel" class="form-control" placeholder="N�mero Contacto / Celular" type="text" >
						                            </div>
						                        </div>
					
					
						                        <div class="control-group">
									                 <label class="control-label" for="departamento">Ciudad del Usuario</label>		
							                         <div class="controls">
								                          <%
								                          try {
								                        	  Connection con=ConnectionSac.getCon();
								                        	  Statement stmt=con.createStatement();
								                        	  String sql="select * from departamentos";
								                        	  ResultSet rst = stmt.executeQuery(sql);
								                          %>		                            
					  <!--9 --> 						  <select id="codigodepto" name="codigodepto" class="form-select" required>
								    							<option selected></option>
									    							<%
									    							while (rst.next()){
									    							%>
								    							<option value=<%=rst.getString(2)%>><%=rst.getString(3)%></option>
									      							<%
									      							}
									      							%>
						 	    						 </select>
							    						 <%
							    							} catch (Exception e){
							    								System.out.println(e);
							    								}
							    							%>         
							                            </div>
							                     </div>
					
					
						                        <div class="control-group">
									                 <label class="control-label" for="perfil">Perfil de Usuario</label>		
							                         <div class="controls">
								                          <%
								                          try {
								                        	  Connection con=ConnectionSac.getCon();
								                        	  Statement stmt=con.createStatement();
								                        	  String sql="select * from perfiles";
								                        	  ResultSet rst = stmt.executeQuery(sql);
								                          %>		                            
					  <!--10 --> 						  <select id="idperfil" name="idperfil" class="form-select" required>
								    							<option selected></option>
									    							<%
									    							while (rst.next()){
									    							%>
								    							<option value=<%=rst.getString(1)%>><%=rst.getString(2)%></option>
									      							<%
									      							}
									      							%>
						 	    						 </select>
							    						 <%
							    							} catch (Exception e){
							    								System.out.println(e);
							    								}
							    							%>         
							                            </div>
							                     </div>
							                     
						                        <div class="control-group">
									                 <label class="control-label" for="facultad">Estado de Usuario</label>		
							                         <div class="controls">
								                          <%
								                          try {
								                        	  Connection con=ConnectionSac.getCon();
								                        	  Statement stmt=con.createStatement();
								                        	  String sql3="select * from estado";
								                        	  ResultSet rst3 = stmt.executeQuery(sql3);
								                          %>		                            
					<!--11 -->  							 <select id="idestado" name="idestado" class="form-select" required>
								    							<option selected></option>
									    							<%
									    							while (rst3.next()){
									    							%>
								    							<option value=<%=rst3.getString(1)%>><%=rst3.getString(2)%></option>
									      							<%
									      							}
									      							%>
						 	    						 </select>
							    						 <%
							    							} catch (Exception e){
							    								System.out.println(e);
							    								}
							    							%>         
							                            </div>
							                     </div>
					
						                        <div class="control-group">
									                 <label class="control-label" for="facultad">Nombre de la Facultad</label>		
							                         <div class="controls">
								                          <%
								                          try {
								                        	  Connection con=ConnectionSac.getCon();
								                        	  Statement stmt=con.createStatement();
								                        	  String sql="select idfacultad, nombre_facultad from facultad order by nombre_facultad";
								                        	  ResultSet rst = stmt.executeQuery(sql);
								                          %>		                            
								   							  <select id="idfacultad" name="idfacultad" class="form-select" required>
										    							<option selected></option>
											    							<%
											    							while (rst.next()){											    								
											    							%>
										    							<option value=<%=rst.getString(1)%>><%=rst.getString(2)%></option>
											      							<%											      							   
											      							}
											      							%>
							 	    						 </select>
							 	    						 
							    						 <%
							    							} catch (Exception e){
							    								System.out.println(e);
							    								}
							    							%>         
							                            </div>
							                     </div>		                     

                                                <!-- Buscar Programas de Acuerdo a la Facultad -->

						                        <div class="control-group">
									                 <label class="control-label" for="facultad">Nombre de la Programa</label>		
							                         <div class="controls">
								                          <%
								                          try {
								                        	  Connection con=ConnectionSac.getCon();
								                        	  Statement stmt=con.createStatement();
								                        	  //String sql="select idfacultad, nombre_facultad from facultad order by nombre_facultad";
								                        	  //String sql="SELECT * FROM  programas p,facultad f WHERE p.idfacultad = f.idfacultad and p.idfacultad = " + 7;
								                        	  String sql="SELECT * FROM programas";
								                        	  ResultSet rst = stmt.executeQuery(sql);
								                          %>		                            
								   							  <select id="idfacultad" name="idfacultad" class="form-select" required>
										    							<option selected></option>
											    							<%
											    							while (rst.next()){											    								
											    							%>
										    							<option value=<%=rst.getString(1)%>><%=rst.getString(5)%></option>
											      							<%											      							   
											      							}
											      							%>
							 	    						 </select>
							 	    						 
							    						 <%
							    							} catch (Exception e){
							    								System.out.println(e);
							    								}
							    							%>         
							                            </div>
							                     </div>	

                                                <!-- Buscar Programas de Acuerdo a la Facultad -->



							                     
												<div class=" col-sm-12">
							                      	  <hr>
								                 </div>
					
							                      <div class="control-group">
							                           <div class="controls">
							                                <button class="btn btn-success" type="submit">Adicionar Registro</button>
							                                <a href="Lusuarios.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
							                           </div>
							                      </div>
					<!-- -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.- -->		                      
							                </div>
							            </div>
					
						            </form>
					       			<%
										String msg = request.getParameter("msg");
							
										if ("valid".equals(msg)) {
										%>
										<figure class="text-center">
										    
									    <!-- JOptionPane.showMessageDialog(null, "Operaci�n realizada correctamente"); -->
										
										<strong class="text-center" style="color: #198754">Informaci�n, adicionada Exitosamente!</strong>
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
					  </div>
					  <!-- Fin Contenido Tab 1 -->
<!-- ================================================================================================= -->					       
<!-- Espacio en Blanco -->					  
<!-- ================================================================================================= -->					       
					  <!-- Contenido Tab 2 -->
					  <div id="menu1" class="container tab-pane fade"><br>
 					       <h3><img src="img/png/direccion.png" width="50" height="50">2. Permisos y Restricciones.</h3>
		                   <div class="control-group">
	                            <label class="control-label">Registro Usuario Nro.</label>	
	                            <div class="controls">
<!-- 1  -->  							 <input type="text" id="cod_usuario" name="cod_usuario" class="form-control" value="<%out.println(id);%>" readonly="readonly">
	                            </div>
	                       </div> 					       
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
						   	<div class="row-fluid">
						       	<div class="span12">	       	
						       		<form class="form-horizontal" action="AdUsuarioAction.jsp" method="POST">        
							              <div class="span6">
							                   <div class="area">					   
													<div class="filter-content">
														<div class="card-body">
															<form>
																<h4>Condiciones Institucionales.</h4>
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	        0. Condici�n. Inicio del Proceso.
																	  </span>
																</label>  <!-- form-check.// -->
												
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	        1. Condici�n. Denominaci�n.
																	  </span>
																</label>  <!-- form-check.// -->
																
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	        2. Condici�n. Justificaci�n.
																	  </span>
																</label>  <!-- form-check.// -->
												
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	        3. Condici�n. Aspectos curriculares.
																	  </span>
																</label>  <!-- form-check.// -->
												
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	        4. Condici�n. Organizaci�n actividades acad�micas.
																	  </span>
																</label>  <!-- form-check.// -->
												
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	        5. Condici�n. Investigaci�n.
																	  </span>
																</label>  <!-- form-check.// -->
												
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	        6. Condici�n. Relaci�n con el sector externo.
																	  </span>
																</label>  <!-- form-check.// -->
																
																<label class="form-check">
																       <input class="form-check-input" type="checkbox" value="">
																	   <span class="form-check-label">
																	    	 7. Condici�n. Profesores.
																	   </span>
																</label>  <!-- form-check.// -->
																
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	    	8. Condici�n. Medios Educativos.
																	  </span>
																</label>  <!-- form-check.// -->
																
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	    	9. Condici�n. Infraestructura f�sica y tecnol�gica.
																	  </span>
																</label>  <!-- form-check.// -->
																
																
											                    <br>
																<label class="form-check">
																	  <input class="form-check-input" type="checkbox" value="">
																	  <span class="form-check-label">
																	    	Usuario Autorizado 
																	  </span>
																</label>  <!-- form-check.// -->
												
																<div class=" col-sm-12">
											                      	  <hr>
												                 </div>
									
											                      <div class="control-group">
											                           <div class="controls">
											                                <button class="btn btn-success" type="submit">Registrar</button>
											                                <a href="Lusuarios.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
											                           </div>
											                      </div>
												
															</form>
											
														</div> <!-- card-body.// -->
													</div>												    
						                           
					   							</div>
					   							
					   					</div>
					<!-- .......................................................................    Segunda mitad de la Ventana -->
							            
							            <div class="span6">
							                <div class="area">							                		                
												<div class="filter-content">
													<div class="card-body">
														<form>
															<h4>Condiciones Programa.</h4>
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																        0. Condici�n. Inicio del Proceso.
																  </span>
															</label>  <!-- form-check.// -->
											
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																        1. Condici�n. Denominaci�n.
																  </span>
															</label>  <!-- form-check.// -->
															
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																        2. Condici�n. Justificaci�n.
																  </span>
															</label>  <!-- form-check.// -->
											
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																        3. Condici�n. Aspectos curriculares.
																  </span>
															</label>  <!-- form-check.// -->
											
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																        4. Condici�n. Organizaci�n actividades acad�micas.
																  </span>
															</label>  <!-- form-check.// -->
											
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																        5. Condici�n. Investigaci�n.
																  </span>
															</label>  <!-- form-check.// -->
											
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																        6. Condici�n. Relaci�n con el sector externo.
																  </span>
															</label>  <!-- form-check.// -->
															
															<label class="form-check">
															       <input class="form-check-input" type="checkbox" value="">
																   <span class="form-check-label">
																    	 7. Condici�n. Profesores.
																   </span>
															</label>  <!-- form-check.// -->
															
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																    	8. Condici�n. Medios Educativos.
																  </span>
															</label>  <!-- form-check.// -->
															
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																    	9. Condici�n. Infraestructura f�sica y tecnol�gica.
																  </span>
															</label>  <!-- form-check.// -->
											
															<br>
															<label class="form-check">
																  <input class="form-check-input" type="checkbox" value="">
																  <span class="form-check-label">
																    	Usuario Autorizado 
																  </span>
															</label>  <!-- form-check.// -->
											
															<div class=" col-sm-12">
										                      	  <hr>
											                 </div>
								
										                      <div class="control-group">
										                           <div class="controls">
										                                <button class="btn btn-success" type="submit">Registrar</button>
										                                <a href="Lusuarios.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
										                           </div>
										                      </div>
															
															
														</form>
										
													</div> <!-- card-body.// -->
												</div>							                     
					<!-- -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.- -->		                      
							                </div>
							            </div>
					
						            </form>
					       			<%
										String msg2 = request.getParameter("msg2");
							
										if ("valid".equals(msg2)) {
										%>
										<figure class="text-center">
										    
									    <!-- JOptionPane.showMessageDialog(null, "Operaci�n realizada correctamente"); -->
										
										<strong class="text-center" style="color: #198754">Informaci�n, adicionada Exitosamente!</strong>
										<%
										}
										%>
										<%
										if ("invalid".equals(msg2)) {
										%>
										<figure class="text-center">
											<strong class="text-center" style="color: #dc3545">No se pudo Agregar, por favor Intente nuevamente!</strong>
											<%
											}
											%>
								   </div>
								
						       </div>					       
					  </div>

<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->					  
					  <!-- Fin Contenido Tab 2 -->
<!-- ================================================================================================= -->					       
<!-- Espacio en Blanco -->					  
<!-- ================================================================================================= -->					       
					  <!-- Contenido Tab 3 -->  
					  <div id="menu2" class="container tab-pane fade"><br>
						   <h3><img src="img/png/direccion.png" width="50" height="50">3. Otra Informaci�n de Usuario.</h3>
		                   <div class="control-group">
	                            <label class="control-label">Registro Usuario Nro.</label>	
	                            <div class="controls">
  							         <input type="text" id="cod_usuario" name="cod_usuario" class="form-control" value="<%out.println(id);%>" readonly="readonly">
	                            </div>
	                       </div> 					       
					   
						   <p>Espacio para agregar ., Otra informaci�n relevante como restricciones de Usuario.</p>
		                    <br>
							<label class="form-check">
								  <input class="form-check-input" type="checkbox" value="">
								  <span class="form-check-label">
								    	Usuario Autorizado 
								  </span>
							</label>  <!-- form-check.// -->
			
							<div class=" col-sm-12">
		                      	  <hr>
			                 </div>

		                      <div class="control-group">
		                           <div class="controls">
		                                <button class="btn btn-success" type="submit">Registrar</button>
		                                <a href="Lusuarios.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
		                           </div>
		                      </div>
						   
						   
						   
					  </div>
					  <!-- Fin Contenido Tab 3 -->
<!-- ================================================================================================= -->					       
<!-- Espacio en Blanco -->					  
<!-- ================================================================================================= -->					       
				  </div>
			</div>
			<hr size="3px" color="green"> <!-- Linea Verde -->
	   </div>
	     					
	</section>
	
	
	<!-- Fin Tabla de Procesos Traida de la Base de Datos  -->	
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

	</body>
</html>