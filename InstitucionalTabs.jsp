<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistema de Aseguramiento de la Calidad - Universidad de Ciencias Aplicadas y Ambientales U.D.C.A</title>	 
    <link rel="icon" type="image/x-icon" href="../../images/favicon.ico">
	<link rel="stylesheet" href="../../css/fontawesome-all.min.css">
	
	<!-- Este es el que hace lo Scroll -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Fin Este -->

	<link rel="stylesheet" href="../../css/common-1.css"/>
    <link rel="stylesheet" href="css/style.css"/>

    <!-- ******************** Estos son los que hacen el dise�o m�s Rellenito esos-->
	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>	
    <!-- ******************** Fin Estos son los que hacen el dise�o m�s Rellenito esos-->
    
    <!-- ******************** Estos son de los Tabs -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- ******************** Fin de los Tabs -->
</head>


<body>


       <div class="container">
			<div class="actions text-left">	
			    <h2>Proceso Registro Calificado -Nuevo</h2>		    	
		    </div>
			<!-- CxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxCxC -->
			  	<div class="row-fluid">
			       	<div class="span12">	       	
			       		<form class="form-horizontal" action="AdprogramaAction.jsp" method="POST">        
				            <div class="span6">
				                <div class="area">		                		                
			                        <div class="control-group">
			                            <label class="control-label">Fecha de Registro</label>	
			                            <div class="controls">
			                                <input id="fechaRegistro" placeholder=
			                                "Fecha de Registro" type="date" >
			                            </div>
			                        </div>
			                        
			                        <div class="control-group">
						                 <label class="control-label" for="facultad">Tipo de Proceso: </label>		
				                         <div class="controls">
					                          <%
					                          try {
					                        	  Connection con=ConnectionSac.getCon();
					                        	  Statement stmt=con.createStatement();
					                        	  String sql="SELECT * FROM proceso;";
					                        	  ResultSet rst = stmt.executeQuery(sql);
					                          %>
		    									          
												<select name="descripcion_proceso" class="form-select" required>
					    								<option selected></option>
						    							<%
						    							while (rst.next()){
						    								int seleccion = 0;
						    								
						    							%>
					    								<option value=<%=rst.getString(2)%>><%=rst.getString(2)%></option>
					    										seleccion = <%=rst.getString(1)%>
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
		                             
		                 <!-- ------------ Sub Proceso -->
		                                              
		                             <div class="control-group">
						                 <label class="control-label" for="facultad">Sub -Proceso: </label>		
				                         <div class="controls">
					                          <%
					                          try {
					                        	  Connection con=ConnectionSac.getCon();
					                        	  Statement stmt=con.createStatement();
					                        	  String sql="SELECT * FROM subproceso";
					                        	  //String sql="SELECT * FROM subproceso where idproceso ="+SubProceso+"";
					                        	  ResultSet rst = stmt.executeQuery(sql);
					                          %>		                            
												<select name="descripcion_subproceso" class="form-select" required>
					    								<option selected></option>
						    							<%
						    							while (rst.next()){
						    							%>
					    								<option value=<%=rst.getString(3)%>><%=rst.getString(3)%></option>
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
		                 <!-- ------------ Fin Sub Proceso -->
		                             
		
		
		
			                        <div class="control-group">
						                 <label class="control-label" for="facultad">Programa: </label>		
				                         <div class="controls">
					                          <%
					                          try {
					                        	  Connection con=ConnectionSac.getCon();
					                        	  Statement stmt=con.createStatement();
					                        	  String sql="SELECT * FROM programas;";
					                        	  ResultSet rst = stmt.executeQuery(sql);
					                        	%>		                            
												<select name="nombre_programa" class="form-select" required>
					    								<option selected></option>
						    							<%
						    							while (rst.next()){
						    							%>
					    								<option value=<%=rst.getString(4)%>><%=rst.getString(4)%></option>
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
				                </div>
				            </div>
		
			                        		        
		<!-- .......................................................................    Segunda mitad de la Ventana -->
				            <div class="span6">
				                <div class="area">	
									<div class=" col-sm-12">
				                        <div class="control-group">
				                            <label class="control-label">Proceso para:</label>	
				                            <div class="controls">
				                                <select id="country" name="country" class="input-xlarge">
							                            <option value="" selected="selected">(Seleccione Tipo de Proceso)</option>
							                            <option value="0">Institucional</option>
							                            <option value="1">Programa</option>
			                        			</select>
				                            </div>
					                      </div>
					                      
					                      
			                        <div class="control-group">
						                 <label class="control-label" for="facultad">Estado: </label>		
				                         <div class="controls">
					                          <%
					                          try {
					                        	  Connection con=ConnectionSac.getCon();
					                        	  Statement stmt=con.createStatement();
					                        	  String sql="SELECT * FROM estado;";
					                        	  ResultSet rst = stmt.executeQuery(sql);
					                          %>		                            
												<select name="estado" class="form-select" required>
					    								<option selected></option>
						    							<% while (rst.next()){
						    							%>
					    								<option value=<%=rst.getString(2)%>><%=rst.getString(2)%></option>
						      							<%}%>
			 	    							</select>
				    							<%
														} catch (Exception e){
															System.out.println(e);
													}
												%>         
				                         </div>
				                     </div>			                      
				                      	  
				                      	  <hr>		                      	  		                       
					                  </div>
					                  <!-- <input type="file" id="fileupload" onchange="readURL(this);" multiple="multiple" required>  
				                       	  <input type="file" id="fileupload" onchange="readURL(this);" multiple="multiple">
				                       				                        
				                      <hr>-->
				                        
				                      <div class="control-group">
				                           <div class="controls">	                                 
				                                <button class="btn btn-success" type="submit">Adicionar Registro</button>
				                                <a href="factores.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
				                           </div>
				                      </div>
				                      
				                      	                      
				                </div>
				            </div>
			            </form>
			        </div>
			        
			        <!-- 			        
				    <h4>Informaci�n General Instituci�n</h4>
				    <hr>
				    -->    	        
			    </div>
				<!-- XcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcXcX -->
			
			
	<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 
https://www.w3schools.com/bootstrap4/bootstrap_grid_large.asp    Lo saque de aqui -->

<div class="container mt-3">
  <br>
  <!-- Nav tabs -->
  <h4>Informaci�n General Instituci�n Cuadro Maestro</h4>
  <hr>
				    	
  <ul class="nav nav-tabs">
	  <li class="nav-item">
	      <a class="nav-link active" data-toggle="tab" href="#Tab1">1. Info General IES</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab2">2. Oferta de la IES</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab3">3. Estudiantes</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab4">4. Profesores listado detallado</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab5">5. Profesores resumen -contrato Formal</a>
	  </li>
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab6">6. Profesores movilidad</a>
	  </li>	  
	  
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab7">7. Investigaci�n - grupos y profesores</a>
	  </li>		  

	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab8">8. Estudiante movilidad</a>
	  </li>	

	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab9">9. Estudiante movilidad</a>
	  </li>	

	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab10">10. Proyecci�n social o extensi�n</a>
	  </li>	
	  <li class="nav-item">
	      <a class="nav-link" data-toggle="tab" href="#Tab11">11. Convenios
	  </li>	

 
 

  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
  
	   <!-- Tab 1 -->
	   <div id="Tab1" class="container tab-pane active"><br>
            <!-- Primer Grupo de Acorde�n -->	   
	        <h4>1. Info General IES.</h4>
			<!-- Primer Grupo de accordion -->			    
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
						      <div class="card-header">
						        <a class="card-link" data-toggle="collapse" href="#a1">
						          Criterio 1. Denominaci�n
						        </a>
						      </div>
						      <div id="a1" class="collapse" data-parent="#accordion">
						        <div class="card-body">
						          <div class="panel-body">
						               
						               <h4>Pregunta orientadora</h4>
						               <div class="panel-body">						                
		                                   <p>Describa la correspondencia de la denominaci�n del programa con el t�tulo a otorgar, el nivel formaci�n, los contenidos curriculares del programa, los resultados de aprendizaje y el perfil del egresado.</p>
		                                   <p>�La denominaci�n del programa corresponde al t�tulo que se va a otorgar, el nivel de formaci�n, los contenidos curriculares y el perfil del egresado?</p>
		                                   <p>Adicionalmente, cuando se trate de una nueva denominaci�n, no registrada o activa en SNIES, presente un an�lisis en el que se justifique la nueva denominaci�n. Para dicho an�lisis tener en cuenta las siguientes preguntas:</p>
		                                   <p>- �Responde con la din�mica de los conocimientos acumulados y la prospectiva de estos?<p>
										   <p>- �Se enmarca en uno o m�s campos de educaci�n y formaci�n?<p>
										   <p>- �Refleja la existencia del compromiso de la instituci�n con la actividad profesional, el desempe�o laboral y/o el emprendimiento de los egresados, as� como en el desarrollo del saber o del hacer disciplinar en el entorno local, regional, nacional o global?<p>
										   <p>- �Contribuye al desarrollo de la educaci�n superior?<p>
										   <p>- �Tiene un sustento cient�fico o cultural?<p>
										   <p>- �Se basa en un an�lisis de referentes nacionales e internacionales? Cuando as� lo proponga la instituci�n, lo deber� justificar.</p>
	
										   <p>c) Para programas t�cnicos profesionales y tecnol�gicos, �la denominaci�n permite diferenciarlo claramente de ocupaciones, disciplinas, profesiones, programas t�cnicos laborales y de otros niveles de cualificaci�n?</p>
										   <p>d) Para las especializaciones �Se defini� una denominaci�n que corresponde al �rea espec�fica de estudio? �Da cuenta de una concentraci�n mayor en un tema o aspecto profesional espec�fico?</p>
										   <p>e) Para programas de maestr�a o doctorado �Se adopt� una denominaci�n interdisciplinar como opci�n?</p>
									   </div>	   

								       <div class="panel-body">
								            <label for="add-description">DAR RESPUESTA:(M�ximo 7000 caracteres con espacios)</label>
								            <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								       </div>

									    <h4>Anexos Criterio 1. Denominaci�n</h4>																					       
				                        <div class="control-group">
				                            <label class="control-label">Anexo 1. Denominaci�n del programa</label>		
				                            <div class="controls">
		                                        <input type="text" id="anexo1" name="anwexo1" class="form-control" placeholder="(M�ximo 30 caracteres con espacios)" >
				                            </div>
				                        </div>

				                        <div class="control-group">
				                            <label class="control-label">Anexo 2. Acuerdo de creaci�n del Programa</label>		
				                            <div class="controls">
		                                        <input type="text" id="anexo2" name="anexo2" class="form-control" placeholder="(M�ximo 30 caracteres con espacios)" >
				                            </div>
				                        </div>

				                        <div class="control-group">
				                            <label class="control-label">Anexo 3. Estudio de factibilidad</label>		
				                            <div class="controls">
		                                        <input type="text" id="anexo3" name="anexo3" class="form-control" placeholder="(M�ximo 30 caracteres con espacios)" >
				                            </div>
				                        </div>

				                        <div class="control-group">
				                            <label class="control-label">Anexo 4. Proyecto Educativo del Programa</label>		
				                            <div class="controls">
		                                        <input type="text" id="anexo4" name="anexo4" class="form-control" placeholder="(M�ximo 30 caracteres con espacios)" >
				                            </div>
				                        </div>
	                               </div>
						        </div>
						      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#a2">
								        Criterio 2. Denominaci�n
								       </a>
							      </div>							      
							      <div id="a2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
									       <h4>Pregunta orientadora</h4>
										   <div class="panel-body">		                                   
		                                   		<p>Demuestre que la denominaci�n del programa y el t�tulo a otorgar cumplen con la normatividad vigente, de acuerdo a la regulaci�n establecida.</p>
										   </div>
	
									       <div class="panel-body">
									            <label for="add-description">DAR RESPUESTA:(M�ximo 7000 caracteres con espacios)</label>
									            <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									       </div>
	
										   <h4>Anexos Criterio 2. Denominaci�n</h4>																					       
					                       <div class="control-group">
					                            <label class="control-label">Anexo 1. An�lisis incidencia exigencia tarjeta o licencia profesional</label>		
					                            <div class="controls">
			                                        <input type="text" id="anexo1" name="anwexo1" class="form-control" placeholder="(M�ximo 30 caracteres con espacios)" >
					                            </div>
					                       </div>

								       </div>
							      </div>							      
						    </div>
						    
						    
					  </div>
				</div>
			<!-- Fin Primer Container -->		        
	   </div>
	   
	   <!-- Tab 2 -->
	   <div id="Tab2" class="container tab-pane fade"><br>
            <!-- Segundo Grupo de Acorde�n -->
	        <h4>2. Oferta de la IES.</h4>
	        <p>
			<h4>Pregunta orientadora</h4>
			<div class="panel-body">			
            	<p>D� cuenta de la pertinencia del programa mediante una justificaci�n en la que se sustente la correspondencia entre el contenido curricular, los perfiles de egreso y la(s) modalidad(es) y su relaci�n con el desarrollo social, cultural, ambiental, econ�mico y cient�fico, frente a las necesidades del pa�s y la regi�n.</p>
			</div>
	        <div class="panel-body">
	             <label for="add-description">DAR RESPUESTA:(M�ximo 7000 caracteres con espacios)</label>
	             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
	        </div>

	   </div>

	   <!-- Tab 3 -->        
	   <div id="Tab3" class="container tab-pane fade"><br>
            <!-- Tercer Grupo de Acorde�n -->
	        <h4>3. Estudiantes.</h4>
			<!-- Tercer Grupo de accordion -->
			    <p>
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
							      <div class="card-header">
								       <a class="card-link" data-toggle="collapse" href="#c1">
								          Criterio 1. Componente formativo - Plan de estudios
								       </a>
							      </div>
							      <div id="c1" class="collapse" data-parent="#accordion">
								       <div class="card-body"> 
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa el plan de estudios del programa, representado en cr�ditos acad�micos, conforme a los resultados de aprendizaje propuestos, la formaci�n integral, las actividades acad�micas y los perfiles de egreso, en armon�a con las habilidades del contexto internacional, nacional, y local orientados al desarrollo de las capacidades para aprender a aprender.</p>
								            	<p>(La respuesta entre los cuatro �tems en TOTAL debe ser m�ximo 7000 caracteres con espacios)</p>
											</div>
																						
									        <div class="panel-body">
									             <label for="add-description">a) Presente el plan de estudios, representado en cr�ditos acad�micos									             </label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
									        </div>
 
									        <div class="panel-body">
									             <label for="add-description">b) Indique c�mo el plan de estudios evidencia el desarrollo de los resultados de aprendizaje
									             </label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
									        </div>

									        <div class="panel-body">
									             <label for="add-description">c) Indiqu� como el plan de estudios evidencia la formaci�n integral
									             </label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
									        </div>

									        <div class="panel-body">
									             <label for="add-description">d) Se�ale las estrategias de flexibilizaci�n
									             </label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
									        </div>

								       </div>
							      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c2">
								        Criterio 2. Componente formativo-Resultados de Aprendizaje
								       </a>
							      </div>
							      <div id="c2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
											<h4>Criterio 2. Componente formativo</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa el proceso institucional realizado para el dise�o y la construcci�n de la propuesta de formaci�n y la reflexi�n realizada que demuestra la armon�a de la propuesta con las habilidades del contexto internacional, nacional y local orientados al desarrollo de las capacidades para aprender a aprender. As� mismo, presente la declaraci�n de los resultados de aprendizaje para el programa acad�mico, su perfil de egreso y la correspondencia de estos.</p>
								            	<p>(La respuesta entre los dos �tems en TOTAL debe ser m�ximo 7000 caracteres con espacios)</p>
											</div>
											<h4>Respuesta</h4>
											
											<p>(La respuesta entre los dos �tems en TOTAL debe ser m�ximo 7000 caracteres con espacios)</p>
									        
									        
									        <div class="panel-body">
									             <label for="add-description">a) Describa la forma c�mo se va a realizar el seguimiento al desarrollo de los resultados de aprendizaje</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="3500"></textarea>
									        </div>
 
									        <div class="panel-body">
									             <label for="add-description">b) Describa c�mo van a realizar la evaluaci�n a los resultados de aprendizaje en el Programa</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength=""3500"></textarea>
									        </div>
									        

								       </div>
							      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c3">
								          Criterio 3. Componente pedag�gico
								       </a>
							      </div>
							      <div id="c3" class="collapse" data-parent="#accordion">
								        <div class="card-body">
											<h4>Criterio 3. Componente pedag�gico</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa los lineamientos e innovaci�n pedag�gica y did�ctica institucionales aplicables al programa en coherencia con la(s) modalidad(es) propuesta(s). As� mismo, describa la manera como se concibe el aprendizaje, la ense�anza, las estrategias did�cticas y las herramientas tecnol�gicas dispuestas para favorecer la interacci�n entre estudiantes y entre estudiantes, y profesores.
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(M�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>

									   </div>
							      </div>
						    </div>			    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c4">
								          Criterio 4. Componente de interacci�n-1
								       </a>
							      </div>
							      <div id="c4" class="collapse" data-parent="#accordion">
								        <div class="card-body">
											<h4>Criterio 4. Componente de Interacci�n</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Demuestre c�mo en el programa, desde los aspectos curriculares, plantea la creaci�n y fortalecimiento de v�nculos entre la instituci�n y los diversos actores.
								            	</p>								            	
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(M�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>
								          	
								        </div>
							      </div>
						    </div>			    

						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c5">
								          Criterio 5. Componente de interacci�n-2
								       </a>
							      </div>
							      <div id="c5" class="collapse" data-parent="#accordion">
								        <div class="card-body">
											<h4>Criterio 5. Componente de Interacci�n</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Argumente c�mo el programa, logra desarrollar habilidades para interrelacionarse tanto en profesores como estudiantes.
								            	</p>								            	
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(M�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>
								        </div>
							      </div>
						    </div>			    


						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c6">
								          Criterio 6. Componente de interacci�n
								       </a>
							      </div>
							      <div id="c6" class="collapse" data-parent="#accordion">
								        <div class="card-body">									        
											<h4>Criterio 6. Componente de interacci�n</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa las condiciones previstas por el programa, orientadas a la internacionalizaci�n del curr�culo y al desarrollo de una segunda lengua.</p>
								            	<p>(La respuesta entre los dos �tems en TOTAL debe ser m�ximo 7000 caracteres con espacios)</p>
											</div>
											<h4>Respuesta</h4>										
											
									        <div class="panel-body">
									             <label for="add-description">(La respuesta entre los dos �tems en TOTAL debe ser m�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength=""3500"></textarea>
									        </div>
									        
									        
									        <div class="panel-body">
									             <label for="add-description">Sustente las condiciones previstas por el programa, con relaci�n a la pol�tica de internacionalizaci�n, el desarrollo de una segunda lengua y a los convenios existentes y proyectados.</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="3500"></textarea>
									        </div>
 

								        </div>
							      </div>
						    </div>			    

						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c7">
								          Criterio 7. Conceptualizaci�n te�rica y epistemol�gica
								       </a>
							      </div>
							      <div id="c7" class="collapse" data-parent="#accordion">
								        <div class="card-body">
											<h4>Criterio 7. Conceptualizaci�n te�rica y epistemol�gica</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describir los fundamentos te�ricos del programa, haciendo referencia a la naturaleza del objeto de estudio y las formas de conocimiento.
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>

								        </div>
							      </div>
						    </div>			    

						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#c8">
								          Criterio 8. Mecanismos de Evaluaci�n
								       </a>
							      </div>
							      <div id="c8" class="collapse" data-parent="#accordion">
								        <div class="card-body">
											<h4>Criterio 8. Mecanismos de Evaluaci�n</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Presentar los mecanismos de evaluaci�n definidos, de forma articulada y coherente con el proceso formativo y las actividades acad�micas. Enuncie los instrumentos propuestos de medici�n y seguimiento del desempe�o de profesores y estudiantes con relaci�n a los resultados de aprendizaje previstos para el programa, aclarando el prop�sito de cada instrumento..
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>
								        </div>
							      </div>
						    </div>			    



					  </div>
				</div>
			<!-- Fin Tercer Container -->	        
	   </div>

	   <!-- Tab 4 -->      
	   <!-- <div id="Tab4" class="container tab-pane"><br> -->
	   <div id="Tab4" class="container tab-pane"><br>
            <!-- Cuarto Grupo de Acorde�n -->
	        <h4>4. Profesores listado detallado.</h4>
			<!-- Cuarto Grupo de accordion -->
			    <p>
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
						      <div class="card-header">
						        <a class="card-link" data-toggle="collapse" href="#d1">
						          Criterio 1. Organizaci�n actividades acad�micas
						        </a>
						      </div>
						      <div id="d1" class="collapse" data-parent="#accordion">
						        <div class="card-body">							        
									<h4>Criterio 1. Organizaci�n de las actividades acad�micas y proceso formativo</h4><p>
									<h4>Pregunta orientadora</h4>
									<div class="panel-body">			
						            	<p>Describir la manera en que se dan o proyectan relaciones entre el enfoque pedag�gico y did�ctico adoptado y los resultados de aprendizaje declarados para el programa/espacio acad�mico.
						            	</p>
									</div>
									<h4>Respuesta</h4>
							        <div class="panel-body">
							             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
							             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
							        </div>
						        </div>
						      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#d2">
								        Criterio 2. Organizaci�n actividades acad�micas
								       </a>
							      </div>
							      <div id="d2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
											<h4>Criterio 2. Organizaci�n de las actividades acad�micas y proceso formativo</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa el plan de estudios del programa expresado en cr�ditos acad�micos, discriminando las horas de trabajo independiente y directo con el profesor.
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>									        
								       </div>
							      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#d3">
								          Criterio 3. Organizaci�n actividades acad�micas
								       </a>
							      </div>
							      <div id="d3" class="collapse" data-parent="#accordion">
								        <div class="card-body">									        
											<h4>Criterio 3. Organizaci�n de las actividades acad�micas y proceso formativo</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa las estrategias previstas para el acompa�amiento y seguimiento a las actividades acad�micas, que permiten la interacci�n entre docentes y estudiantes en el proceso formativo.
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>									        
								        </div>
							      </div>
						    </div>			    
						    
					  </div>
				</div>
			<!-- Fin Cuarto Container -->

	   </div>
	   
	   <!-- Tab 5 -->	   
	   <div id="Tab5" class="container tab-pane fade"><br>
            <!-- Quinto Grupo de Acorde�n -->
	        <h4>5. Profesores resumen -contrato Formal.</h4>
				<!-- Quinto Grupo de accordion -->
			    <p>
				<div class="container">
					  <p>		  
					  <div id="accordion">
						    <div class="card">
						      <div class="card-header">
						        <a class="card-link" data-toggle="collapse" href="#e1">
						          Criterio 1. Investigaci�n, innovaci�n
						        </a>
						      </div>
						      <div id="e1" class="collapse" data-parent="#accordion">
						        <div class="card-body">							        
									<h4>Criterio 1. Investigaci�n, innovaci�n</h4><p>
									<h4>Pregunta orientadora</h4>
									<div class="panel-body">			
						            	<p>Describa las estrategias, los contenidos y los medios previstos para la formaci�n en investigaci�n, innovaci�n y/o creaci�n art�stica y cultural que permitan alcanzar, entre otras, la incorporaci�n del uso de las tecnolog�as de la informaci�n y la comunicaci�n y el logro de competencias de pensamiento cr�tico, comunicaci�n escrita, oral y otras formas de expresi�n, formulaci�n y resoluci�n de problemas, promoci�n de la creatividad y adaptabilidad.
						            	</p>
									</div>
									<h4>Respuesta</h4>
							        <div class="panel-body">
							             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
							             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
							        </div>
						        </div>
						      </div>
						    </div>
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#e2">
								        Criterio 2. Investigaci�n, innovaci�n
								       </a>
							      </div>
							      <div id="e2" class="collapse" data-parent="#accordion">
								       <div class="card-body">
											<h4>Criterio 2. Investigaci�n, innovaci�n y/o creaci�n art�stica y cultural</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Declare expl�citamente c�mo prev� el programa acad�mico la incorporaci�n de la investigaci�n, la innovaci�n y/o creaci�n art�stica y cultural, para el desarrollo del conocimiento, y defina las �reas, l�neas o tem�ticas en las que se enfocar�n los esfuerzos y proyectos.
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>									        
								       </div>
							      </div>
						    </div> 
						    
						    
						    <div class="card">
							      <div class="card-header">
								       <a class="collapsed card-link" data-toggle="collapse" href="#e3">
								          Criterio 3. Investigaci�n, innovaci�n y/o creaci�n art�stica y cultural
								       </a>
							      </div>
							      <div id="e3" class="collapse" data-parent="#accordion">
								        <div class="card-body">
											<h4>Criterio 2. Investigaci�n, innovaci�n y/o creaci�n art�stica y cultural</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa c�mo los resultados de investigaci�n, innovaci�n y/o creaci�n art�stica y cultural del programa, contribuir�n a la formaci�n social de las din�micas que aporten a la construcci�n del pa�s
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
									             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
									        </div>
								          	
								        </div>
							      </div>
						    </div>			    
						    
					  </div>
				</div>
			    <!-- Fin Quinto Container -->	        
	        
	   </div>

	   <!-- Tab 6 -->        
	   <div id="Tab6" class="container tab-pane fade"><br>
	        <h4>6. Profesores movilidad.</h4>				        
			<!-- Sexto Grupo de accordion -->
		    <p>
			<div class="container">
				  <p>		  
				  <div id="accordion">
				       <div class="card">
				            <div class="card-header">
				                 <a class="card-link" data-toggle="collapse" href="#f1">
				                    Criterio 1. Relaci�n con el sector externo
 				                 </a>
				            </div>
				            <div id="f1" class="collapse" data-parent="#accordion">
				                 <div class="card-body">
										<h4>Criterio 1. Relaci�n con el sector externo</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los mecanismos y las estrategias que el programa acad�mico genera para lograr una articulaci�n e interacci�n sist�mica con la comunidad educativa, sectores y din�micas del medio externo, con el fin de fortalecer el desarrollo de las labores formativas, acad�micas, docentes, cient�ficas, culturales y de extensi�n del programa y de enriquecer la pr�ctica pedag�gica, en coherencia con las modalidades, el nivel de formaci�n del programa, la naturaleza jur�dica de la instituci�n, la tipolog�a e identidad institucional.
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

				                 </div>
				            </div>
				       </div>
				  </div>
			</div>
			<!-- Fin Sexto Container -->

	   </div>    
    
	   <!-- Tab 7 -->    
 	   <div id="Tab7" class="container tab-pane fade"><br>
	        <h4>7. Investigaci�n - grupos y profesores.</h4>
            <!-- Septimo Grupo de Acorde�n -->            
		    <p>
			<div class="container">
				  <p>		  
				  <div id="accordion">
					    <div class="card">
					      <div class="card-header">
					        <a class="card-link" data-toggle="collapse" href="#g1">
					          Criterio 1. Profesores
					        </a>
					      </div>
					      <div id="g1" class="collapse" data-parent="#accordion">
					        <div class="card-body">
								<h4>Criterio 1. Profesores</h4><p>
								<h4>Pregunta orientadora</h4>
								<div class="panel-body">			
					            	<p>Argumente c�mo el plan de vinculaci�n garantizar� la suficiencia e idoneidad de los profesores en concordancia con el nivel, campo espec�fico de formaci�n del programa y el n�mero de estudiantes proyectados.
					            	</p>
								</div>
								<h4>Respuesta</h4>
						        <div class="panel-body">
						             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
						             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
						        </div>

					        </div>
					      </div>
					    </div>
					    
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#g2">
							        Criterio 2. Profesores
							       </a>
						      </div>
						      <div id="g2" class="collapse" data-parent="#accordion">
							       <div class="card-body">
										<h4>Criterio 2. Profesores</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Argumente c�mo el plan de vinculaci�n garantizar� la idoneidad de los profesores en los programas a distancia, virtual, dual u otros desarrollos que combinen e integren las anteriores modalidades.
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							       </div>
						      </div>
					    </div>
					    
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#g3">
							          Criterio 3. Profesores
							       </a>
						      </div>
						      <div id="g3" class="collapse" data-parent="#accordion">
							        <div class="card-body">
										<h4>Criterio 3. Profesores</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Argumente c�mo el plan de vinculaci�n garantizar� la disponibilidad de los profesores en concordancia con las labores a desarrollar (formativas, acad�micas, docentes, cient�ficas, culturales y de extensi�n), el nivel de formaci�n y el campo de educaci�n del programa.
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							        </div>
						      </div>
					    </div>
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#g4">
							          Criterio 4. Profesores
							       </a>
						      </div>
						      <div id="g4" class="collapse" data-parent="#accordion">
							        <div class="card-body">
										<h4>Criterio 4. Profesores</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa las estrategias para fomentar la permanencia y desarrollo de los profesores en el programa.
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							        </div>
						      </div>
					    </div>
					    
					    
				  </div>
			</div>
		    <!-- Fin Septimo Container -->		        
	   </div>    
        
	   <!-- Tab 8 -->        
	   <div id="Tab8" class="container tab-pane fade"><br>
	        <h4>8. Estudiante movilidad.</h4>
            <!-- Octavo Grupo de Acorde�n -->			            
		    <p>
			<div class="container">
				  <p>		  
				  <div id="accordion">
					    <div class="card">
					      <div class="card-header">
					        <a class="card-link" data-toggle="collapse" href="#h1">
					          Criterio 1. Medios Educativos
					        </a>
					      </div>
					      <div id="h1" class="collapse" data-parent="#accordion">
					        <div class="card-body">
								<h4>Criterio 1. Medios Educativos</h4><p>
								<h4>Pregunta orientadora</h4>
								<div class="panel-body">			
					            	<p>Describa la dotaci�n de los ambientes f�sicos y/o virtuales de aprendizaje que incorporan equipos, mobiliario, plataformas tecnol�gicas, sistemas inform�ticos o los que hagan sus veces, recursos bibliogr�ficos f�sicos y digitales, bases de datos, recursos de aprendizaje e informaci�n, entre otros, y argumente c�mo estos atienden los procesos formativos, el
desarrollo de la investigaci�n, innovaci�n y/o creaci�n art�stica y cultural, y la extensi�n.					            	
					            	</p>
								</div>
								<h4>Respuesta</h4>
						        <div class="panel-body">
						             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
						             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
						        </div>
					        </div>
					      </div>
					    </div>
					    
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#h2">
							        Criterio 2. Medios Educativos
							       </a>
						      </div>
						      <div id="h2" class="collapse" data-parent="#accordion">
							       <div class="card-body">
										<h4>Criterio 2. Medios Educativos</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los mecanismos de capacitaci�n y apropiaci�n de los medios educativos para los estudiantes y profesores adscritos al programa y un plan de mantenimiento, actualizaci�n y reposici�n de estos medios, en el que adem�s se demuestre:							            						            	
							            	</p>
							            	<p>a) La coherencia entre lo dispuesto para el programa y la pol�tica institucional de capacitaci�n
y apropiaci�n de los medios educativos para los estudiantes y profesores.
							            	</p>
							            	<p>b) La existencia de un plan de mantenimiento, actualizaci�n y reposici�n de los medios educativos en el programa.</p>
							            	<p>c) La coherencia entre el plan de mantenimiento, actualizaci�n y reposici�n de los medios educativos en el programa y la pol�tica institucional.</p>
							            	
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							       </div>
						      </div>
					    </div>
					    
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#h3">
							          Criterio 3. Medios Educativos
							       </a>
						      </div>
						      <div id="h3" class="collapse" data-parent="#accordion">
							        <div class="card-body">
										<h4>Criterio 3. Medios Educativos</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los medios educativos para cada modalidad (presencial, a distancia, virtual, dual u otros desarrollos que combinen e integren las anteriores modalidades) y las estrategias que implementar� el programa para atender las barreras de acceso y caracter�sticas de la poblaci�n.					            	
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							        </div>
						      </div>
					    </div>
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#h4">
							          Criterio 4. Medios Educativos
							       </a>
						      </div>
						      <div id="h4" class="collapse" data-parent="#accordion">
							        <div class="card-body">
										<h4>Criterio 4. Medios Educativos</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los medios educativos disponibles seg�n la modalidad del programa, en los centros de tutor�a, pr�cticas o talleres.					            	
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>
							        </div>
						      </div>
					    </div>

					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#h5">
							          Criterio 5. Medios Educativos
							       </a>
						      </div>
						      <div id="h5" class="collapse" data-parent="#accordion">
							        <div class="card-body">
										<h4>Criterio 4. Medios Educativos</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Para los programas del campo de salud y bienestar y de psicolog�a, describa los escenarios de pr�ctica en los cuales se desarrollen pr�cticas formativas docencia servicio. 					            	
							            	</p>
							            	<p>Para programas de pregrado en el �rea de educaci�n, describa las instituciones educativas de los niveles de preescolar, b�sica o medias para el desarrollo de las pr�cticas (pedag�gicas, educativas, docentes, entre otras), as� como estrategias previstas para garantizar el acompa�amiento y seguimiento de dichas pr�cticas por parte de profesores de la IES que oferta el programa. 					            	
							            	</p>
							            	
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							        </div>
						      </div>
					    </div>

					    
					    
				  </div>
			</div>
		    <!-- Fin Octavo Container -->            
	        
	   </div>     
    
   	   <!-- Tab 9 -->    
	   <div id="Tab9" class="container tab-pane fade"><br>
	        <h5>9. Estudiante movilidad.</h5>
            <!-- Noveno Grupo de Acorde�n --> 			            
		    <p>
			<div class="container">
				  <p>		  
				  <div id="accordion">
					    <div class="card">
					      <div class="card-header">
					        <a class="card-link" data-toggle="collapse" href="#i1">
					          Criterio 1. Infra. f�sica y tecnol�gica
					        </a>
					      </div>
					      <div id="i1" class="collapse" data-parent="#accordion">
					        <div class="card-body">
								<h4>Criterio 1. Infra. f�sica y tecnol�gica</h4><p>
								<h4>Pregunta orientadora</h4>
								<div class="panel-body">			
					            	<p>Describa los ambientes f�sicos y virtuales de aprendizaje espec�ficos para el desarrollo de los procesos formativos, la investigaci�n, innovaci�n y/o creaci�n art�stica y cultural, y la extensi�n, de acuerdo con las modalidades del programa. 					            	
					            	</p>
					            	
								</div>
								<h4>Respuesta</h4>
						        <div class="panel-body">
						             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
						             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
						        </div>
					          
					        </div>
					      </div>
					    </div>
					    
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#i2">
							        Criterio 2. Infra. f�sica y tecnol�gica
							       </a>
						      </div>
						      <div id="i2" class="collapse" data-parent="#accordion">
							       <div class="card-body">
										<h4>Criterio 2. Infra. f�sica y tecnol�gica</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los instrumentos jur�dicos, civiles o comerciales, que demuestran la disponibilidad de una infraestructura f�sica y tecnol�gica para soportar el desarrollo del programa 					            	
							            	</p>
							            	
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							       </div>
						      </div>
					    </div>


				  </div>
			</div>
		    <!-- Fin Noveno Container -->	        
	   </div> 


  	   <!-- Tab 10 -->    
	   <div id="Tab10" class="container tab-pane fade"><br>
	        <h5>10. Proyecci�n social o extensi�n.</h5>
            <!-- Noveno Grupo de Acorde�n --> 			            
		    <p>
			<div class="container">
				  <p>		  
				  <div id="accordion">
					    <div class="card">
					      <div class="card-header">
					        <a class="card-link" data-toggle="collapse" href="#i1">
					          Criterio 1. Infra. f�sica y tecnol�gica
					        </a>
					      </div>
					      <div id="i1" class="collapse" data-parent="#accordion">
					        <div class="card-body">
								<h4>Criterio 1. Infra. f�sica y tecnol�gica</h4><p>
								<h4>Pregunta orientadora</h4>
								<div class="panel-body">			
					            	<p>Describa los ambientes f�sicos y virtuales de aprendizaje espec�ficos para el desarrollo de los procesos formativos, la investigaci�n, innovaci�n y/o creaci�n art�stica y cultural, y la extensi�n, de acuerdo con las modalidades del programa. 					            	
					            	</p>
					            	
								</div>
								<h4>Respuesta</h4>
						        <div class="panel-body">
						             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
						             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
						        </div>
					          
					        </div>
					      </div>
					    </div>
					    
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#i2">
							        Criterio 2. Infra. f�sica y tecnol�gica
							       </a>
						      </div>
						      <div id="i2" class="collapse" data-parent="#accordion">
							       <div class="card-body">
										<h4>Criterio 2. Infra. f�sica y tecnol�gica</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los instrumentos jur�dicos, civiles o comerciales, que demuestran la disponibilidad de una infraestructura f�sica y tecnol�gica para soportar el desarrollo del programa 					            	
							            	</p>
							            	
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							       </div>
						      </div>
					    </div>


				  </div>
			</div>
		    <!-- Fin Noveno Container -->	        
	   </div> 
 
 	   <!-- Tab 11 -->    
	   <div id="Tab11" class="container tab-pane fade"><br>
	        <h5>11. Convenios.</h5>
            <!-- Noveno Grupo de Acorde�n --> 			            
		    <p>
			<div class="container">
				  <p>		  
				  <div id="accordion">
					    <div class="card">
					      <div class="card-header">
					        <a class="card-link" data-toggle="collapse" href="#i1">
					          Criterio 1. Infra. f�sica y tecnol�gica
					        </a>
					      </div>
					      <div id="i1" class="collapse" data-parent="#accordion">
					        <div class="card-body">
								<h4>Criterio 1. Infra. f�sica y tecnol�gica</h4><p>
								<h4>Pregunta orientadora</h4>
								<div class="panel-body">			
					            	<p>Describa los ambientes f�sicos y virtuales de aprendizaje espec�ficos para el desarrollo de los procesos formativos, la investigaci�n, innovaci�n y/o creaci�n art�stica y cultural, y la extensi�n, de acuerdo con las modalidades del programa. 					            	
					            	</p>
					            	
								</div>
								<h4>Respuesta</h4>
						        <div class="panel-body">
						             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
						             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
						        </div>
					          
					        </div>
					      </div>
					    </div>
					    
					    
					    <div class="card">
						      <div class="card-header">
							       <a class="collapsed card-link" data-toggle="collapse" href="#i2">
							        Criterio 2. Infra. f�sica y tecnol�gica
							       </a>
						      </div>
						      <div id="i2" class="collapse" data-parent="#accordion">
							       <div class="card-body">
										<h4>Criterio 2. Infra. f�sica y tecnol�gica</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los instrumentos jur�dicos, civiles o comerciales, que demuestran la disponibilidad de una infraestructura f�sica y tecnol�gica para soportar el desarrollo del programa 					            	
							            	</p>
							            	
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser m�ximo 7000 caracteres con espacios)</label>
								             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
								        </div>

							       </div>
						      </div>
					    </div>


				  </div>
			</div>
		    <!-- Fin Noveno Container -->	        
	   </div> 
 
  </div>  <!-- Fin Tabs -->
</div>

<!-- PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP -->


   </div>

  

    	<!--js-->
		<!--<script type="text/javascript" src="http://jrain.oscitas.netdna-cdn.com/tutorial/js/jquery-1.12.0.min.js"></script>-->
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

		<!--<script src="http://jrain.oscitas.netdna-cdn.com/tutorial/js/bootstrap.min.js"></script>-->

		<div id="ad1_footer" style="display: none;">
		    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> <!-- 728-CodeLab-Demo --> <ins class="adsbygoogle"      style="display:inline-block;width:728px;height:90px"      data-ad-client="ca-pub-3311815518700050"      data-ad-slot="5805089606"></ins> <script> (adsbygoogle = window.adsbygoogle || []).push({}); </script>
		</div>

	    <script type="text/javascript" src="../../js/script.js"></script>

</body>
</html>