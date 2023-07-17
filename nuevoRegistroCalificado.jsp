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
	
		<!-- Comenzar a Organizar Todo nuevo desde aca -->
       <div class="container">
			<div class="actions text-left">	
			     <h2>Proceso Registro Calificado -Nuevo</h2>		    	
		    </div>
		    <hr size="3px" color="green"> <!-- Linea Verde -->
		</div>		
        <!-- Fin todo Nuevo desde aca -->


		<!-- Comienzan Todos los Tabs -->
		<div class="container">
		  <h2>Condiciones</h2>
		  
		  <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#menu1">1. Denominaci�n</a></li>
		    <li><a data-toggle="tab" href="#menu2">2. Justificaci�n</a></li>
		    <li><a data-toggle="tab" href="#menu3">3. Aspectos curriculares</a></li>
		    <li><a data-toggle="tab" href="#menu4">4. Organizaci�n actividades acad�micas</a></li>
		    <li><a data-toggle="tab" href="#menu5">5. Investigaci�n innovaci�n</a></li>
		    <li><a data-toggle="tab" href="#menu6">6. Relaci�n con el sector externo</a></li>
		    <li><a data-toggle="tab" href="#menu7">7. Profesores</a></li>
		    <li><a data-toggle="tab" href="#menu8">8. Medios Educativos</a></li>
		    <li><a data-toggle="tab" href="#menu9">9. Infraestructura f�sica y tecnol�gica</a></li>
		  </ul>
		  
		  <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
		   
		  <div class="tab-content">
		 
		    <div id="menu1" class="tab-pane fade in active">
		             <!-- Primer Grupo de Acorde�n -->	   
			        <h4>1. Denominaci�n</h4>
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
		
													<div class="actions text-right">
											            <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
														<a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
														<a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
												    </div>
												    
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
											            
											            
				  									  <div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	                    <label> Acciones -></label>
															<a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															<a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											            
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
					<p><h4>1. Anexos</h4>
					<div class="panel-body">
		                <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Denominaci�n</td>
								        <td>Criterio 1. Denominaci�n</td>
								        <td>Anexo 1. Denominaci�n del programa</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-1-Denominacion/Anexo-1-Denominacion-del-programa.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								        <a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-1-Denominacion/Anexo-1-Denominacion-del-programa.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        						            
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td>Criterio 2. Denominaci�n</td>
								        <td>Anexo 1. An�lisis incidencia exigencia tarjeta o licencia profesional</td>						        					        						        
		                                						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-2-Denominacion/Anexo-1-Analisis-incidencia-exigencia-tarjeta-o-licencia-profesional.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a> 
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>                                           						        
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-2-Denominacion/Anexo-1-Analisis-incidencia-exigencia-tarjeta-o-licencia-profesional.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      					   
							   </tbody>
							   
						</table>
                      <div class="control-group">
                           <div class="controls">
                                <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                           </div>
                      </div>						  			
					</div>			
					
					
			   </div>
		
		    <div id="menu2" class="tab-pane fade">
		            <!-- Segundo Grupo de Acorde�n -->
			        <h4>2. Justificaci�n</h4>
			        <p>
					<h4>Pregunta orientadora</h4>
					<div class="panel-body">			
		            	<p>D� cuenta de la pertinencia del programa mediante una justificaci�n en la que se sustente la correspondencia entre el contenido curricular, los perfiles de egreso y la(s) modalidad(es) y su relaci�n con el desarrollo social, cultural, ambiental, econ�mico y cient�fico, frente a las necesidades del pa�s y la regi�n.</p>
					</div>
			        <div class="panel-body">
			             <label for="add-description">DAR RESPUESTA:(M�ximo 7000 caracteres con espacios)</label>
			             <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
			             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
			             
			        </div>
					<p><h4>2. Anexos</h4>
					<div class="panel-body">
		            <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Justificaci�n</td>
								        <td>Criterio 2. Justificaci�n</td>
								        <td>Anexo 1. Elementos previstos Art�culo 8</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-1-Elementos-previstos- Articulo-8.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>								        
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>                                            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-1-Elementos-previstos- Articulo-8.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>             
								        
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. An�lisis por periodos acad�micos programas similares</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-2-Analisis-por-periodos-academicos-programas-similares.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-2-Analisis-por-periodos-academicos-programas-similares.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
							   </tbody>
							   
						</table>
                        <div class="control-group">
                             <div class="controls">
                                <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>						  			
					</div>					
			   </div>
		
		    <div id="menu3" class="tab-pane fade">
		          <!-- Tercer Grupo de Acorde�n -->
			        <h4>3. Aspectos curriculares</h4>
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
											             
					  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
		
											             
											        </div>
		 
											        <div class="panel-body">
											             <label for="add-description">b) Indique c�mo el plan de estudios evidencia el desarrollo de los resultados de aprendizaje
											             </label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
											             
											             
											        </div>
		
											        <div class="panel-body">
											             <label for="add-description">c) Indiqu� como el plan de estudios evidencia la formaci�n integral
											             </label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
											             
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
											        </div>
		
											        <div class="panel-body">
											             <label for="add-description">d) Se�ale las estrategias de flexibilizaci�n
											             </label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
											        </div>
		 
											        <div class="panel-body">
											             <label for="add-description">b) Describa c�mo van a realizar la evaluaci�n a los resultados de aprendizaje en el Programa</label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength=""3500"></textarea>
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
											             
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
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
											             
						  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
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
											             
					  											<div class="actions text-right">
												               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
										   	               <label> Acciones -></label>
																       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
																       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
												          </div>
		
		
											        </div>
											        
											        
											        <div class="panel-body">
											             <label for="add-description">Sustente las condiciones previstas por el programa, con relaci�n a la pol�tica de internacionalizaci�n, el desarrollo de una segunda lengua y a los convenios existentes y proyectados.</label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength="3500"></textarea>
						  											<div class="actions text-right">
													               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
											   	               <label> Acciones -></label>
																	       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
																	       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          		 </div>
		
											             
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
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
											             
					  											<div class="actions text-right">
												               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
										   	               <label> Acciones -></label>
																       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
																       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
												          </div>
										             
											             
											        </div>
										        </div>
									      </div>
								    </div>			    
		
		
							  </div>
						</div>
						
					<!-- Fin Tercer Container -->
					<p><h4>3. Anexos</h4>
					<div class="panel-body">
		                <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Aspectos curriculares</td>
								        <td>Criterio. 1. Componente formativo - Plan de estudios</td>
								        <td>Anexo. 1. Plan de estudios</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-1-Plan-de-estudios.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-1-Plan-de-estudios.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		 
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Medios de comunicaci�n y difusi�n</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-2-Medios-de-comunicacion-y-difusi�n.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-2-Medios-de-comunicacion-y-difusi�n.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td>Criterio. 2. Componente formativo Resultados de Aprendizaje</td>
								        <td>Anexo 1. Resultados de aprendizaje</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-1-Resultados-de-aprendizaje.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-1-Resultados-de-aprendizaje.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Gu�a dise�o RA</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-2-Guia-diseno-RA.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-2-Guia-diseno-RA.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
		
								      <tr>
								        <td></td>
								        <td>Criterio. 3. Componente pedag�gico</td>
								        <td>Anexo. 1. Componente pedag�gico</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-3-Componente pedagogico/Anexo-1-Componente-pedag�gico.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>						        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-3-Componente pedagogico/Anexo-1-Componente-pedag�gico.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
		
								      <tr>
								        <td></td>
								        <td>Criterio. 4. Componente de interacci�n 1</td>
								        <td>Anexo 1. Componente interacci�n</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-4-Componente de interaccion-1/Anexo-1-Componente-interaccion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>                                						        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-4-Componente de interaccion-1/Anexo-1-Componente-interaccion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio. 5. Componente de interacci�n 2</td>
								        <td>Anexo 1. Evidencias Art�culo 17 Lit c)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-5-Componente de interaccion-2/Anexo-1-Evidencias-Articulo-17-Lit-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-5-Componente de interaccion-2/Anexo-1-Evidencias-Articulo-17-Lit-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 6 Componente de interacci�n</td>
								        <td>Anexo 1. Evidencias Art�culo 17 Lit d)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-6-Componente-de-interacci�n/Anexo-1-Evidencias-Art�culo-17-Lit-d).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-6-Componente-de-interacci�n/Anexo-1-Evidencias-Art�culo-17-Lit-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de Internacionalizaci�n</td>						        
		                                <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		                                <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-6-Componente-de-interacci�n/Anexo-2-Plan-de-Internacionalizacion.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
		                                <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
		                                    
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio. 7. Conceptualizacion teorica y epistemol�gica</td>
								        <td>Anexo 1. Evidencias Art�culo 19</td>						        
		                                <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-7-Conceptualizacion-teorica-y-epistemol�gica/Anexo-1-Evidencias-Articulo-19.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
		                                    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>		                                    
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-7-Conceptualizacion-teorica-y-epistemol�gica/Anexo-1-Evidencias-Articulo-19.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 8 Mecanismos de evaluaci�n</td>
								        <td>Anexo 1. Mecanismos de evaluaci�n</td>						        
		                                <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-8-Mecanismos-de-evaluacion/Anexo-1-Mecanismos-de-evaluacion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>		                                    
		                                    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		                                    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-8-Mecanismos-de-evaluacion/Anexo-1-Mecanismos-de-evaluacion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
							   </tbody>
							    
						</table>
                        <div class="control-group">
                             <div class="controls">
                                  <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                  <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>						  			
						  			
					</div>								
			   </div>
		
		    <div id="menu4" class="tab-pane fade">
		             <!-- Cuarto Grupo de Acorde�n -->
			        <h4>4. Organizaci�n actividades acad�micas</h4>
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
									             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
											        </div>									        
										        </div>
									      </div>
								    </div>			    
								    
							  </div>
						</div>
					<!-- Fin Cuarto Container -->
					<p><h4>4. Anexos</h4>
					<div class="panel-body">
		            <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
								      <tr>
								        <td>Organizaci�n actividades acad�micas</td>
								        <td>Criterio 1. Organizaci�n actividades acad�micas</td>
								        <td>Anexo 1. Evidencias Art�culo 24 Lit a), b) c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-a)-b)-c)-y-d).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-a)-b)-c)-y-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td>Criterio 2. Organizaci�n actividades acad�micas</td>
								        <td>Anexo 1. Evidencias Art�culo 24 Lit a), b) c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-e)-f)-i)-y-j).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-e)-f)-i)-y-j).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>					
								      
								      <tr>
								        <td></td>
								        <td>Criterio 3. Organizaci�n actividades acad�micas</td>
								        <td>Anexo 1. Evidencias Art�culo 24 Lit a), b) c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-g)-h)-y-k).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-g)-h)-y-k).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>					
							   </tbody>
						</table>
                        <div class="control-group">
                             <div class="controls">
                                  <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                  <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>						
					</div>	
			   </div>
		
		    <div id="menu5" class="tab-pane fade">
		            <!-- Quinto Grupo de Acorde�n -->
			        <h4>5. Investigaci�n innovaci�n</h4>
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
									             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
									             
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
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
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
											        </div>
										          	
										        </div>
									      </div>
								    </div>			    
								    
							  </div>
						</div>
					    <!-- Fin Quinto Container -->	        
			    		<p><h4>5. Anexos</h4>
						<div class="panel-body">
		            	<!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Investigacion innovacion</td>
								        <td>Criterio 1. Investigaci�n, innovaci�n</td>
								        <td>Anexo 1. Evidencias Art�culo 29 Lit a), b) y c)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-1-Evidencias-Articulo-29-Lit-a)-b)-y-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-1-Evidencias-Articulo-29-Lit-a)-b)-y-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo. 2. Incorporacion-uso-tecnologias</td>						        						        
		    						    <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-2-Incorporacion-uso-tecnologias.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
		    						        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		    						        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-2-Incorporacion-uso-tecnologias.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      
								      <tr>
								        <td></td>
								        <td>Criterio 3. Investigaci�n, innovaci�n</td>
								        <td>Anexo 1. Declaraci�n expl�cita incorporaci�n investigativa</td>
		    						    <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-1-Declaracion-explicita-incorporacion-investigativa.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
		    						    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		    						    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>    						                 
								        <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-1-Declaracion-explicita-incorporacion-investigativa.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>						      
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de desarrollo-Investigaci�n</td>
		    						    <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>		    						    
		    						        <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-2-Plan-de-desarrollo-Investigacion.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>						            
								        </th>
								      </tr>							      
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art�culo 30 Lit a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-30-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-30-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>							      
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art�culo 31 Lit a) al h) Maestr�as y Doctorados</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-31-Lit-a)-al-h)-Maestrias-y-Doctorados.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-31-Lit-a)-al-h)-Maestrias-y-Doctorados.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>							      
		 
								      
								      <tr>
								        <td></td>
								        <td>Criterio 3. Investigaci�n, innovaci�n</td>
								        <td>Anexo 1. Articulaci�n �reas, l�neas de investigaci�n</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-1-Articulaci-n-areas-lineas-de-investigacion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-1-Articulaci-n-areas-lineas-de-investigacion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>						      
								      
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Aportes a los sectores productivos</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-2-Aportes-a-los-sectores-productivos.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-2-Aportes-a-los-sectores-productivos.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>						      
							   </tbody>
						</table>
                        <div class="control-group">
                             <div class="controls">
                                  <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                  <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>						
					</div>					
			   </div>
		
		    <div id="menu6" class="tab-pane fade">
			        <h4>6. Relaci�n con el sector externo</h4>				        
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
		
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
		
										             
										        </div>
		
						                 </div>
						            </div>
						       </div>
						  </div>
					</div>
					<!-- Fin Sexto Container -->
					<p><h4>6. Anexos</h4>
					<div class="panel-body">
		            <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Relaci�n con el sector externo</td>
								        <td>Criterio 1. Relaci�n con el sector externo</td>
								        <td>Anexo 1. Evidencias Art�culo 33 Lit a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/6-Condicion-6-Relacion-con-el-sector-externo/Criterio-1-Relacion-con-el-sector-externo/Anexo-1-Evidencias-Articulo-33-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/6-Condicion-6-Relacion-con-el-sector-externo/Criterio-1-Relacion-con-el-sector-externo/Anexo-1-Evidencias-Articulo-33-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo.2. Plan de Vinculacion Comunidad Acad�mica</td>								        
								        <th>								        
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								        <a href="procesos/programas/2.Registro-Calificado-Nuevo/6-Condicion-6-Relacion-con-el-sector-externo/Anexo-2-Plan-de-Vinculacion-Comunidad-Acad�mica/Anexo-2-Plan-de-Vinculacion-Comunidad-Acad�mica.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
							   </tbody> 
						</table>
                        <div class="control-group">
                             <div class="controls">
                                  <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                  <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>

					</div>				
					
			   </div>
		
		    <div id="menu7" class="tab-pane fade">
			        <h4>7. Profesores</h4>
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
								             
					  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
								             
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
										             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
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
										             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
										             
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
										             
					  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
										        </div>
									        </div>
								      </div>
							    </div>							    
						  </div>
					</div>
				    <!-- Fin Septimo Container -->
				    <p><h4>7. Anexos</h4>
					<div class="panel-body">
		            <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Profesores</td>
								        <td>Criterio 1. Profesores</td>
								        <td>Anexo 1. Evidencias Art�culo 36 Lit a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-1-Evidencias-Articulo-36-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>						                     
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
		  					                <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-1-Evidencias-Articulo-36-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de Vinculaci�n de Profesores</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-2-Plan-de-Vinculacion-de-Profesores.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>								        
                                             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-2-Plan-de-Vinculacion-de-Profesores.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art�culo 38 Lit a) y b)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-3-Evidencias-Articulo-38-it-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-3-Evidencias-Articulo-38-it-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 2. Profesores</td>
								        <td>Anexo-1-Detalle-Perfil-de-los-profesores- a-vincular</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-2-Profesores/Anexo-1-Detalle-Perfil-de-los-profesores- a-vincular.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-2-Profesores/Anexo-1-Detalle-Perfil-de-los-profesores- a-vincular.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 3. Profesores</td>
								        <td>Anexo 1. Evidencias Art�culo 40  Lit. a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-1-Evidencias-Articulo-40-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								             
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-1-Evidencias-Articulo-40-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Experiencia investigativa</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-2-Experiencia-investigativa.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span> 
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-2-Experiencia-investigativa.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 4. Profesores</td>
								        <td>Anexo 1. Evidencias Art�culo 42 Lit. a), b) y c)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-1-Evidencias-Articulo-42-Lit-a)- b)-y-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-1-Evidencias-Articulo-42-Lit-a)- b)-y-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de desarrollo y capacitaci�n</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-2-Plan-de-desarrollo-y-capacitacion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-2-Plan-de-desarrollo-y-capacitacion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		 
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art�culo 44 Lit. a),b),c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-3-Evidencias-Art�culo- 44-Lit-a)-b)-c)-y-d).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-3-Evidencias-Art�culo- 44-Lit-a)-b)-c)-y-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
							   </tbody>
						</table>
                        <div class="control-group">
                             <div class="controls">
                                  <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                  <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>						  			
					</div>
			   </div>    
		
		
		    <div id="menu8" class="tab-pane fade">
			        <h4>8. Medios Educativos</h4>
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
								             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
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
										             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
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
										             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
										             
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
										             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
										             
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
										             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
										             
										        </div>
		
									        </div>
								      </div>
							    </div>
						  </div>
					</div>
				    <!-- Fin Octavo Container -->            
			        <p><h4>8. Anexos</h4>
					<div class="panel-body">
		            <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   </thead>
							   
							   <tbody>
								      <tr>
								        <td>Medios Educativos</td>
								        <td>Criterio 1. Medios Educativos</td>
								        <td>Anexo 1. Evidencias Art. 46 Lit. a),b),c) y d)</td>
								        <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>                                						        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Evidencias-Art-46-Lit-a)-b)-c)-y-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de adquisici�n-Medios Educativos</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-2-Plan-de-adquisicion-Medios-Educativos.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-2-Plan-de-adquisicion-Medios-Educativos.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art. 48 Lit. a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-3-Evidencias-Art-48-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-3-Evidencias-Art-48-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 4. Plan de mantenimiento-Medios Educativos</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-4-Plan-de-mantenimiento-Medios-Educativos.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-4-Plan-de-mantenimiento-Medios-Educativos.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 2. Medios Educativos</td>
								        <td>Anexo 1. Evidencias Art�culo 48 Lit c),d) y e)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Evidencias-Articulo-48-Lit-c)-d)-y-e).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Evidencias-Articulo-48-Lit-c)-d)-y-e).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 5. Medios Educativos</td>
								        <td>Anexo 1. Relaci�n Escenarios de Pr�ctica</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Relacion-Escenarios-de-Practica.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Relacion-Escenarios-de-Practica.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
							   </tbody>
						</table>
                        <div class="control-group">
                             <div class="controls">
                                  <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                  <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>						  			
					</div>					
			        
			   </div>
		    
		    <div id="menu9" class="tab-pane fade">
			        <h4>9. Infraestructura f�sica y tecnol�gica</h4>
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
								             
					  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
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
										             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
										             
										        </div>
		
									       </div>
								      </div>
							    </div>
		
		
						  </div>
					</div> 			   			
				    <!-- Fin Noveno Container -->
				    <p><h4>9. Anexos</h4>
					<div class="panel-body">
		            <!-- <table class="table table-bordered">  -->					
						<table class="table table-bordered">
							   <thead>
							   
							      <tr>
							        <th>Condici�n</th>
							        <th>Criterio</th>
							        <th>Anexo y/� Gu�a</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
								      <tr>
								        <td>Infraestructura f�sica y tecnol�gica</td>
								        <td>Criterio 1. Infra. f�sica y tecnol�gica</td>
								        <td>Anexo 1. Evidencias Art. 50 Lit. a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-50-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>						        
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-50-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de adquisici�n</td>
								        <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-2-Plan-de-adquisicion.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
								            
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art. 52 Lit. a), b) y c)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-3-Evidencias-Art-52-Lit-a)-b)-y-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-3-Evidencias-Art-52-Lit-a)-b)-y-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 4. Plan de mantenimiento</td>
										<th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>										
										    <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-4-Plan-de-mantenimiento.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
								            
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td>Criterio 2. Infra. f�sica y tecnol�gica</td>
								        <td>Anexo 1. Evidencias Art. 52 Lit. d) y e)</td>
										<th><a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-2-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-52-Lit-d)-y-e).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Gu�a -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
										    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>										    
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-2-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-52-Lit-d)-y-e).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Infraestructura F�sica</td>
										<th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Informaci�n"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>										
										    <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-2-Infra-fisica-y-tecnologica/Anexo-2-Infraestructura-Fisica.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Gu�a"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>						            
								        </th>
								      </tr>								      
							   </tbody>							   
						</table>
                        <div class="control-group">
                             <div class="controls">
                                  <button class="btn btn-success" type="submit">Adicionar Registro</button>
                                  <a href="LregistroCalificadoN.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
                             </div>
                        </div>						  			
					</div>				    
			   </div>			   
		       <div class ="Text-center">		
				    <!-- Copyright  -->
				    <hr>
				    <small>Universidad de Ciencias Aplicadas y Ambientales -UDCA</small>
				    <small>� 2022 - Desarrollado por Direcci�n de Aseguramiento de la Calidad -Udca. Sistema de Informaci�n, para el Aseguramiento de la Calidad Institucional</small>
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
								<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">�</span><span class="sr-only">Close</span></button>
								<h4 class="modal-title" id="myModalLabel"><i class="glyphicon glyphicon-volume-up"></i> Agregar comentario</h4>								
							</div>
							
							<div class="modal-body">
								<!-- <p><a title="Facebook" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-facebook fa-stack-1x"></i></span></a> <a title="Twitter" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-twitter fa-stack-1x"></i></span></a> <a title="Google+" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-google-plus fa-stack-1x"></i></span></a> <a title="Linkedin" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-linkedin fa-stack-1x"></i></span></a> <a title="Reddit" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-reddit fa-stack-1x"></i></span></a> <a title="WordPress" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-wordpress fa-stack-1x"></i></span></a> <a title="Digg" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-digg fa-stack-1x"></i></span></a>  <a title="Stumbleupon" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-stumbleupon fa-stack-1x"></i></span></a><a title="E-mail" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-envelope fa-stack-1x"></i></span></a>  <a title="Print" href=""><span class="fa-stack fa-lg"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-print fa-stack-1x"></i></span></a></p> -->																
								<form action="" method="post">
									<div class="input-group">										
							            <label>Agregar comentario (M�ximo 3500 caracteres con espacios):</label>
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


