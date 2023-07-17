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
		    <li class="active"><a data-toggle="tab" href="#menu1">1. Denominación</a></li>
		    <li><a data-toggle="tab" href="#menu2">2. Justificación</a></li>
		    <li><a data-toggle="tab" href="#menu3">3. Aspectos curriculares</a></li>
		    <li><a data-toggle="tab" href="#menu4">4. Organización actividades académicas</a></li>
		    <li><a data-toggle="tab" href="#menu5">5. Investigación innovación</a></li>
		    <li><a data-toggle="tab" href="#menu6">6. Relación con el sector externo</a></li>
		    <li><a data-toggle="tab" href="#menu7">7. Profesores</a></li>
		    <li><a data-toggle="tab" href="#menu8">8. Medios Educativos</a></li>
		    <li><a data-toggle="tab" href="#menu9">9. Infraestructura física y tecnológica</a></li>
		  </ul>
		  
		  <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
		   
		  <div class="tab-content">
		 
		    <div id="menu1" class="tab-pane fade in active">
		             <!-- Primer Grupo de Acordeón -->	   
			        <h4>1. Denominación</h4>
					<!-- Primer Grupo de accordion -->			    
						<div class="container">
							  <p>
							  <div id="accordion">
								    <div class="card">
								      <div class="card-header">
								        <a class="card-link" data-toggle="collapse" href="#a1">
								          Criterio 1. Denominación
								        </a>
								      </div>
								      <div id="a1" class="collapse" data-parent="#accordion">
								        <div class="card-body">
								          <div class="panel-body">
								               
								               <h4>Pregunta orientadora</h4>
								               <div class="panel-body">
				                                   <p>Describa la correspondencia de la denominación del programa con el título a otorgar, el nivel formación, los contenidos curriculares del programa, los resultados de aprendizaje y el perfil del egresado.</p>
				                                   <p>¿La denominación del programa corresponde al título que se va a otorgar, el nivel de formación, los contenidos curriculares y el perfil del egresado?</p>
				                                   <p>Adicionalmente, cuando se trate de una nueva denominación, no registrada o activa en SNIES, presente un análisis en el que se justifique la nueva denominación. Para dicho análisis tener en cuenta las siguientes preguntas:</p>
				                                   <p>- ¿Responde con la dinámica de los conocimientos acumulados y la prospectiva de estos?<p>
												   <p>- ¿Se enmarca en uno o más campos de educación y formación?<p>
												   <p>- ¿Refleja la existencia del compromiso de la institución con la actividad profesional, el desempeño laboral y/o el emprendimiento de los egresados, así como en el desarrollo del saber o del hacer disciplinar en el entorno local, regional, nacional o global?<p>
												   <p>- ¿Contribuye al desarrollo de la educación superior?<p>
												   <p>- ¿Tiene un sustento científico o cultural?<p>
												   <p>- ¿Se basa en un análisis de referentes nacionales e internacionales? Cuando así lo proponga la institución, lo deberá justificar.</p>
												   <p>c) Para programas técnicos profesionales y tecnológicos, ¿la denominación permite diferenciarlo claramente de ocupaciones, disciplinas, profesiones, programas técnicos laborales y de otros niveles de cualificación?</p>
												   <p>d) Para las especializaciones ¿Se definió una denominación que corresponde al área específica de estudio? ¿Da cuenta de una concentración mayor en un tema o aspecto profesional específico?</p>
												   <p>e) Para programas de maestría o doctorado ¿Se adoptó una denominación interdisciplinar como opción?</p>
											   </div>	   
		
										       <div class="panel-body">
										            <label for="add-description">DAR RESPUESTA:(Máximo 7000 caracteres con espacios)</label>
										            <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
		
													<div class="actions text-right">
											            <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
														<a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
														<a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
												    </div>
												    
										       </div>
		
		
											    <h4>Anexos Criterio 1. Denominación</h4>
						                        <div class="control-group">
						                            <label class="control-label">Anexo 1. Denominación del programa</label>
						                            <div class="controls">
				                                        <input type="text" id="anexo1" name="anwexo1" class="form-control" placeholder="(Máximo 30 caracteres con espacios)" >
						                            </div>
						                        </div>
		
						                        <div class="control-group">
						                            <label class="control-label">Anexo 2. Acuerdo de creación del Programa</label>
						                            <div class="controls">
				                                        <input type="text" id="anexo2" name="anexo2" class="form-control" placeholder="(Máximo 30 caracteres con espacios)" >
						                            </div>
						                        </div>
		
						                        <div class="control-group">
						                            <label class="control-label">Anexo 3. Estudio de factibilidad</label>
						                            <div class="controls">
				                                        <input type="text" id="anexo3" name="anexo3" class="form-control" placeholder="(Máximo 30 caracteres con espacios)" >
						                            </div>
						                        </div>
		
						                        <div class="control-group">
						                            <label class="control-label">Anexo 4. Proyecto Educativo del Programa</label>		
						                            <div class="controls">
				                                        <input type="text" id="anexo4" name="anexo4" class="form-control" placeholder="(Máximo 30 caracteres con espacios)" >
						                            </div>
						                        </div>
			                               </div>
								        </div>
								      </div>                                  						      
								    </div>
								    
								    
								    <div class="card">
									      <div class="card-header">
										       <a class="collapsed card-link" data-toggle="collapse" href="#a2">
										        Criterio 2. Denominación
										       </a>
									      </div>							      
									      <div id="a2" class="collapse" data-parent="#accordion">
										       <div class="card-body">
											       <h4>Pregunta orientadora</h4>
												   <div class="panel-body">		                                   
				                                   		<p>Demuestre que la denominación del programa y el título a otorgar cumplen con la normatividad vigente, de acuerdo a la regulación establecida.</p>
												   </div>
			
											       <div class="panel-body">
											            <label for="add-description">DAR RESPUESTA:(Máximo 7000 caracteres con espacios)</label>
											            <textarea class="form-control" id="add-description" rows="10" maxlength="7000"></textarea>
											            
											            
				  									  <div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	                    <label> Acciones -></label>
															<a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															<a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											            
											       </div>
			
												   <h4>Anexos Criterio 2. Denominación</h4>																					       
							                       <div class="control-group">
							                            <label class="control-label">Anexo 1. Análisis incidencia exigencia tarjeta o licencia profesional</label>		
							                            <div class="controls">
					                                        <input type="text" id="anexo1" name="anwexo1" class="form-control" placeholder="(Máximo 30 caracteres con espacios)" >
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Denominación</td>
								        <td>Criterio 1. Denominación</td>
								        <td>Anexo 1. Denominación del programa</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-1-Denominacion/Anexo-1-Denominacion-del-programa.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								        <a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-1-Denominacion/Anexo-1-Denominacion-del-programa.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        						            
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td>Criterio 2. Denominación</td>
								        <td>Anexo 1. Análisis incidencia exigencia tarjeta o licencia profesional</td>						        					        						        
		                                						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-2-Denominacion/Anexo-1-Analisis-incidencia-exigencia-tarjeta-o-licencia-profesional.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a> 
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>                                           						        
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/1-Condicion-1-Denominacion/Criterio-2-Denominacion/Anexo-1-Analisis-incidencia-exigencia-tarjeta-o-licencia-profesional.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
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
		            <!-- Segundo Grupo de Acordeón -->
			        <h4>2. Justificación</h4>
			        <p>
					<h4>Pregunta orientadora</h4>
					<div class="panel-body">			
		            	<p>Dé cuenta de la pertinencia del programa mediante una justificación en la que se sustente la correspondencia entre el contenido curricular, los perfiles de egreso y la(s) modalidad(es) y su relación con el desarrollo social, cultural, ambiental, económico y científico, frente a las necesidades del país y la región.</p>
					</div>
			        <div class="panel-body">
			             <label for="add-description">DAR RESPUESTA:(Máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Justificación</td>
								        <td>Criterio 2. Justificación</td>
								        <td>Anexo 1. Elementos previstos Artículo 8</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-1-Elementos-previstos- Articulo-8.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>								        
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>                                            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-1-Elementos-previstos- Articulo-8.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>             
								        
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Análisis por periodos académicos programas similares</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-2-Analisis-por-periodos-academicos-programas-similares.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/2-Condicion-2-Justificacion/Anexo-2-Analisis-por-periodos-academicos-programas-similares.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
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
		          <!-- Tercer Grupo de Acordeón -->
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
										            	<p>Describa el plan de estudios del programa, representado en créditos académicos, conforme a los resultados de aprendizaje propuestos, la formación integral, las actividades académicas y los perfiles de egreso, en armonía con las habilidades del contexto internacional, nacional, y local orientados al desarrollo de las capacidades para aprender a aprender.</p>
										            	<p>(La respuesta entre los cuatro ítems en TOTAL debe ser máximo 7000 caracteres con espacios)</p>
													</div>
																								
											        <div class="panel-body">
											             <label for="add-description">a) Presente el plan de estudios, representado en créditos académicos									             </label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength="1750 "></textarea>
											             
					  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
		
											             
											        </div>
		 
											        <div class="panel-body">
											             <label for="add-description">b) Indique cómo el plan de estudios evidencia el desarrollo de los resultados de aprendizaje
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
											             <label for="add-description">c) Indiqué como el plan de estudios evidencia la formación integral
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
											             <label for="add-description">d) Señale las estrategias de flexibilización
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
										            	<p>Describa el proceso institucional realizado para el diseño y la construcción de la propuesta de formación y la reflexión realizada que demuestra la armonía de la propuesta con las habilidades del contexto internacional, nacional y local orientados al desarrollo de las capacidades para aprender a aprender. Así mismo, presente la declaración de los resultados de aprendizaje para el programa académico, su perfil de egreso y la correspondencia de estos.</p>
										            	<p>(La respuesta entre los dos ítems en TOTAL debe ser máximo 7000 caracteres con espacios)</p>
													</div>
													<h4>Respuesta</h4>
													
													<p>(La respuesta entre los dos ítems en TOTAL debe ser máximo 7000 caracteres con espacios)</p>
											        
											        
											        <div class="panel-body">
											             <label for="add-description">a) Describa la forma cómo se va a realizar el seguimiento al desarrollo de los resultados de aprendizaje</label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength="3500"></textarea>
											             
				  											<div class="actions text-right">
											               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
									   	               <label> Acciones -></label>
															       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
															       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
											          </div>
		
											             
											        </div>
		 
											        <div class="panel-body">
											             <label for="add-description">b) Describa cómo van a realizar la evaluación a los resultados de aprendizaje en el Programa</label>
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
										          Criterio 3. Componente pedagógico
										       </a>
									      </div>
									      <div id="c3" class="collapse" data-parent="#accordion">
										        <div class="card-body">
													<h4>Criterio 3. Componente pedagógico</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Describa los lineamientos e innovación pedagógica y didáctica institucionales aplicables al programa en coherencia con la(s) modalidad(es) propuesta(s). Así mismo, describa la manera como se concibe el aprendizaje, la enseñanza, las estrategias didácticas y las herramientas tecnológicas dispuestas para favorecer la interacción entre estudiantes y entre estudiantes, y profesores.
										            	</p>
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(Máximo 7000 caracteres con espacios)</label>
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
										          Criterio 4. Componente de interacción-1
										       </a>
									      </div>
									      <div id="c4" class="collapse" data-parent="#accordion">
										        <div class="card-body">
													<h4>Criterio 4. Componente de Interacción</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Demuestre cómo en el programa, desde los aspectos curriculares, plantea la creación y fortalecimiento de vínculos entre la institución y los diversos actores.
										            	</p>								            	
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(Máximo 7000 caracteres con espacios)</label>
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
										          Criterio 5. Componente de interacción-2
										       </a>
									      </div>
									      <div id="c5" class="collapse" data-parent="#accordion">
										        <div class="card-body">
													<h4>Criterio 5. Componente de Interacción</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Argumente cómo el programa, logra desarrollar habilidades para interrelacionarse tanto en profesores como estudiantes.
										            	</p>								            	
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(Máximo 7000 caracteres con espacios)</label>
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
										          Criterio 6. Componente de interacción
										       </a>
									      </div>
									      <div id="c6" class="collapse" data-parent="#accordion">
										        <div class="card-body">									        
													<h4>Criterio 6. Componente de interacción</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Describa las condiciones previstas por el programa, orientadas a la internacionalización del currículo y al desarrollo de una segunda lengua.</p>
										            	<p>(La respuesta entre los dos ítems en TOTAL debe ser máximo 7000 caracteres con espacios)</p>
													</div>
													<h4>Respuesta</h4>										
													
											        <div class="panel-body">
											             <label for="add-description">(La respuesta entre los dos ítems en TOTAL debe ser máximo 7000 caracteres con espacios)</label>
											             <textarea class="form-control" id="add-description" rows="10" maxlength=""3500"></textarea>
											             
					  											<div class="actions text-right">
												               <!-- <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Agregar Comentarios"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a> -->
										   	               <label> Acciones -></label>
																       <a href="" class="btn btn-link" data-toggle="modal" data-target="#myModal" title="Agregar comentario"><span aria-hidden="true" class="glyphicon glyphicon-pencil"></span></a>
																       <a href="" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Observaciones"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>												
												          </div>
		
		
											        </div>
											        
											        
											        <div class="panel-body">
											             <label for="add-description">Sustente las condiciones previstas por el programa, con relación a la política de internacionalización, el desarrollo de una segunda lengua y a los convenios existentes y proyectados.</label>
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
										          Criterio 7. Conceptualización teórica y epistemológica
										       </a>
									      </div>
									      <div id="c7" class="collapse" data-parent="#accordion">
										        <div class="card-body">
													<h4>Criterio 7. Conceptualización teórica y epistemológica</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Describir los fundamentos teóricos del programa, haciendo referencia a la naturaleza del objeto de estudio y las formas de conocimiento.
										            	</p>
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
										          Criterio 8. Mecanismos de Evaluación
										       </a>
									      </div>
									      <div id="c8" class="collapse" data-parent="#accordion">
										        <div class="card-body">
													<h4>Criterio 8. Mecanismos de Evaluación</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Presentar los mecanismos de evaluación definidos, de forma articulada y coherente con el proceso formativo y las actividades académicas. Enuncie los instrumentos propuestos de medición y seguimiento del desempeño de profesores y estudiantes con relación a los resultados de aprendizaje previstos para el programa, aclarando el propósito de cada instrumento..
										            	</p>
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Aspectos curriculares</td>
								        <td>Criterio. 1. Componente formativo - Plan de estudios</td>
								        <td>Anexo. 1. Plan de estudios</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-1-Plan-de-estudios.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-1-Plan-de-estudios.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		 
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Medios de comunicación y difusión</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-2-Medios-de-comunicacion-y-difusión.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-1-Componente formativo-Plandeestudios/Anexo-2-Medios-de-comunicacion-y-difusión.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td>Criterio. 2. Componente formativo Resultados de Aprendizaje</td>
								        <td>Anexo 1. Resultados de aprendizaje</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-1-Resultados-de-aprendizaje.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-1-Resultados-de-aprendizaje.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Guía diseño RA</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-2-Guia-diseno-RA.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-2-Componente formativo-Resultados de Aprendizaje/Anexo-2-Guia-diseno-RA.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
		
								      <tr>
								        <td></td>
								        <td>Criterio. 3. Componente pedagógico</td>
								        <td>Anexo. 1. Componente pedagógico</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-3-Componente pedagogico/Anexo-1-Componente-pedagógico.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>						        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-3-Componente pedagogico/Anexo-1-Componente-pedagógico.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
		
								      <tr>
								        <td></td>
								        <td>Criterio. 4. Componente de interacción 1</td>
								        <td>Anexo 1. Componente interacción</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-4-Componente de interaccion-1/Anexo-1-Componente-interaccion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>                                						        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-4-Componente de interaccion-1/Anexo-1-Componente-interaccion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio. 5. Componente de interacción 2</td>
								        <td>Anexo 1. Evidencias Artículo 17 Lit c)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-5-Componente de interaccion-2/Anexo-1-Evidencias-Articulo-17-Lit-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-5-Componente de interaccion-2/Anexo-1-Evidencias-Articulo-17-Lit-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 6 Componente de interacción</td>
								        <td>Anexo 1. Evidencias Artículo 17 Lit d)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-6-Componente-de-interacción/Anexo-1-Evidencias-Artículo-17-Lit-d).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-6-Componente-de-interacción/Anexo-1-Evidencias-Artículo-17-Lit-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de Internacionalización</td>						        
		                                <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		                                <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-6-Componente-de-interacción/Anexo-2-Plan-de-Internacionalizacion.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
		                                <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
		                                    
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio. 7. Conceptualizacion teorica y epistemológica</td>
								        <td>Anexo 1. Evidencias Artículo 19</td>						        
		                                <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-7-Conceptualizacion-teorica-y-epistemológica/Anexo-1-Evidencias-Articulo-19.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
		                                    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>		                                    
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-7-Conceptualizacion-teorica-y-epistemológica/Anexo-1-Evidencias-Articulo-19.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 8 Mecanismos de evaluación</td>
								        <td>Anexo 1. Mecanismos de evaluación</td>						        
		                                <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-8-Mecanismos-de-evaluacion/Anexo-1-Mecanismos-de-evaluacion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>		                                    
		                                    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		                                    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/3-Condicion-3-Aspectos-curriculares/Criterio-8-Mecanismos-de-evaluacion/Anexo-1-Mecanismos-de-evaluacion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
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
		             <!-- Cuarto Grupo de Acordeón -->
			        <h4>4. Organización actividades académicas</h4>
					<!-- Cuarto Grupo de accordion -->
					    <p>
						<div class="container">
							  <p>		  
							  <div id="accordion">
								    <div class="card">
								      <div class="card-header">
								        <a class="card-link" data-toggle="collapse" href="#d1">
								          Criterio 1. Organización actividades académicas
								        </a>
								      </div>
								      <div id="d1" class="collapse" data-parent="#accordion">
								        <div class="card-body">							        
											<h4>Criterio 1. Organización de las actividades académicas y proceso formativo</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describir la manera en que se dan o proyectan relaciones entre el enfoque pedagógico y didáctico adoptado y los resultados de aprendizaje declarados para el programa/espacio académico.
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
										        Criterio 2. Organización actividades académicas
										       </a>
									      </div>
									      <div id="d2" class="collapse" data-parent="#accordion">
										       <div class="card-body">
													<h4>Criterio 2. Organización de las actividades académicas y proceso formativo</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Describa el plan de estudios del programa expresado en créditos académicos, discriminando las horas de trabajo independiente y directo con el profesor.
										            	</p>
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
										          Criterio 3. Organización actividades académicas
										       </a>
									      </div>
									      <div id="d3" class="collapse" data-parent="#accordion">
										        <div class="card-body">									        
													<h4>Criterio 3. Organización de las actividades académicas y proceso formativo</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Describa las estrategias previstas para el acompañamiento y seguimiento a las actividades académicas, que permiten la interacción entre docentes y estudiantes en el proceso formativo.
										            	</p>
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
								      <tr>
								        <td>Organización actividades académicas</td>
								        <td>Criterio 1. Organización actividades académicas</td>
								        <td>Anexo 1. Evidencias Artículo 24 Lit a), b) c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-a)-b)-c)-y-d).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-a)-b)-c)-y-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td>Criterio 2. Organización actividades académicas</td>
								        <td>Anexo 1. Evidencias Artículo 24 Lit a), b) c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-e)-f)-i)-y-j).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-e)-f)-i)-y-j).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>					
								      
								      <tr>
								        <td></td>
								        <td>Criterio 3. Organización actividades académicas</td>
								        <td>Anexo 1. Evidencias Artículo 24 Lit a), b) c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-g)-h)-y-k).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/4-Condicion-4-Organizacion-actividades-academicas/Anexo-1-Evidencias-Articulo-24-Lit-g)-h)-y-k).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
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
		            <!-- Quinto Grupo de Acordeón -->
			        <h4>5. Investigación innovación</h4>
						<!-- Quinto Grupo de accordion -->
					    <p>
						<div class="container">
							  <p>		  
							  <div id="accordion">
								    <div class="card">
								      <div class="card-header">
								        <a class="card-link" data-toggle="collapse" href="#e1">
								          Criterio 1. Investigación, innovación
								        </a>
								      </div>
								      <div id="e1" class="collapse" data-parent="#accordion">
								        <div class="card-body">							        
											<h4>Criterio 1. Investigación, innovación</h4><p>
											<h4>Pregunta orientadora</h4>
											<div class="panel-body">			
								            	<p>Describa las estrategias, los contenidos y los medios previstos para la formación en investigación, innovación y/o creación artística y cultural que permitan alcanzar, entre otras, la incorporación del uso de las tecnologías de la información y la comunicación y el logro de competencias de pensamiento crítico, comunicación escrita, oral y otras formas de expresión, formulación y resolución de problemas, promoción de la creatividad y adaptabilidad.
								            	</p>
											</div>
											<h4>Respuesta</h4>
									        <div class="panel-body">
									             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
										        Criterio 2. Investigación, innovación
										       </a>
									      </div>
									      <div id="e2" class="collapse" data-parent="#accordion">
										       <div class="card-body">
													<h4>Criterio 2. Investigación, innovación y/o creación artística y cultural</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Declare explícitamente cómo prevé el programa académico la incorporación de la investigación, la innovación y/o creación artística y cultural, para el desarrollo del conocimiento, y defina las áreas, líneas o temáticas en las que se enfocarán los esfuerzos y proyectos.
										            	</p>
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
										          Criterio 3. Investigación, innovación y/o creación artística y cultural
										       </a>
									      </div>
									      <div id="e3" class="collapse" data-parent="#accordion">
										        <div class="card-body">
													<h4>Criterio 2. Investigación, innovación y/o creación artística y cultural</h4><p>
													<h4>Pregunta orientadora</h4>
													<div class="panel-body">			
										            	<p>Describa cómo los resultados de investigación, innovación y/o creación artística y cultural del programa, contribuirán a la formación social de las dinámicas que aporten a la construcción del país
										            	</p>
													</div>
													<h4>Respuesta</h4>
											        <div class="panel-body">
											             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Investigacion innovacion</td>
								        <td>Criterio 1. Investigación, innovación</td>
								        <td>Anexo 1. Evidencias Artículo 29 Lit a), b) y c)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-1-Evidencias-Articulo-29-Lit-a)-b)-y-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-1-Evidencias-Articulo-29-Lit-a)-b)-y-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo. 2. Incorporacion-uso-tecnologias</td>						        						        
		    						    <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-2-Incorporacion-uso-tecnologias.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
		    						        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		    						        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-1-Investigacion-innovacion/Anexo-2-Incorporacion-uso-tecnologias.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      
								      <tr>
								        <td></td>
								        <td>Criterio 3. Investigación, innovación</td>
								        <td>Anexo 1. Declaración explícita incorporación investigativa</td>
		    						    <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-1-Declaracion-explicita-incorporacion-investigativa.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
		    						    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
		    						    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>    						                 
								        <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-1-Declaracion-explicita-incorporacion-investigativa.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>						      
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de desarrollo-Investigación</td>
		    						    <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>		    						    
		    						        <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-2-Plan-de-desarrollo-Investigacion.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>						            
								        </th>
								      </tr>							      
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Artículo 30 Lit a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-30-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-30-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>							      
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Artículo 31 Lit a) al h) Maestrías y Doctorados</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-31-Lit-a)-al-h)-Maestrias-y-Doctorados.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-2-Investigacion-innovacion/Anexo-3-Evidencias-Articulo-31-Lit-a)-al-h)-Maestrias-y-Doctorados.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>							      
		 
								      
								      <tr>
								        <td></td>
								        <td>Criterio 3. Investigación, innovación</td>
								        <td>Anexo 1. Articulación áreas, líneas de investigación</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-1-Articulaci-n-areas-lineas-de-investigacion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-1-Articulaci-n-areas-lineas-de-investigacion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>						      
								      
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Aportes a los sectores productivos</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-2-Aportes-a-los-sectores-productivos.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/5-Condicion-5-Investigacion-innovacion/Criterio-3-Investigacion-innovacion/Anexo-2-Aportes-a-los-sectores-productivos.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
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
			        <h4>6. Relación con el sector externo</h4>				        
					<!-- Sexto Grupo de accordion -->
				    <p>
					<div class="container">
						  <p>		  
						  <div id="accordion">
						       <div class="card">
						            <div class="card-header">
						                 <a class="card-link" data-toggle="collapse" href="#f1">
						                    Criterio 1. Relación con el sector externo
		 				                 </a>
						            </div>
						            <div id="f1" class="collapse" data-parent="#accordion">
						                 <div class="card-body">
												<h4>Criterio 1. Relación con el sector externo</h4><p>
												<h4>Pregunta orientadora</h4>
												<div class="panel-body">			
									            	<p>Describa los mecanismos y las estrategias que el programa académico genera para lograr una articulación e interacción sistémica con la comunidad educativa, sectores y dinámicas del medio externo, con el fin de fortalecer el desarrollo de las labores formativas, académicas, docentes, científicas, culturales y de extensión del programa y de enriquecer la práctica pedagógica, en coherencia con las modalidades, el nivel de formación del programa, la naturaleza jurídica de la institución, la tipología e identidad institucional.
									            	</p>
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Relación con el sector externo</td>
								        <td>Criterio 1. Relación con el sector externo</td>
								        <td>Anexo 1. Evidencias Artículo 33 Lit a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/6-Condicion-6-Relacion-con-el-sector-externo/Criterio-1-Relacion-con-el-sector-externo/Anexo-1-Evidencias-Articulo-33-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/6-Condicion-6-Relacion-con-el-sector-externo/Criterio-1-Relacion-con-el-sector-externo/Anexo-1-Evidencias-Articulo-33-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo.2. Plan de Vinculacion Comunidad Académica</td>								        
								        <th>								        
								        <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								        <a href="procesos/programas/2.Registro-Calificado-Nuevo/6-Condicion-6-Relacion-con-el-sector-externo/Anexo-2-Plan-de-Vinculacion-Comunidad-Académica/Anexo-2-Plan-de-Vinculacion-Comunidad-Académica.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
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
		            <!-- Septimo Grupo de Acordeón -->            
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
							            	<p>Argumente cómo el plan de vinculación garantizará la suficiencia e idoneidad de los profesores en concordancia con el nivel, campo específico de formación del programa y el número de estudiantes proyectados.
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
									            	<p>Argumente cómo el plan de vinculación garantizará la idoneidad de los profesores en los programas a distancia, virtual, dual u otros desarrollos que combinen e integren las anteriores modalidades.
									            	</p>
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
									            	<p>Argumente cómo el plan de vinculación garantizará la disponibilidad de los profesores en concordancia con las labores a desarrollar (formativas, académicas, docentes, científicas, culturales y de extensión), el nivel de formación y el campo de educación del programa.
									            	</p>
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
							   
								      <tr>
								        <td>Profesores</td>
								        <td>Criterio 1. Profesores</td>
								        <td>Anexo 1. Evidencias Artículo 36 Lit a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-1-Evidencias-Articulo-36-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>						                     
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
		  					                <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-1-Evidencias-Articulo-36-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de Vinculación de Profesores</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-2-Plan-de-Vinculacion-de-Profesores.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>								        
                                             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-2-Plan-de-Vinculacion-de-Profesores.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Artículo 38 Lit a) y b)</td>						        
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-3-Evidencias-Articulo-38-it-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-1-Profesores/Anexo-3-Evidencias-Articulo-38-it-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 2. Profesores</td>
								        <td>Anexo-1-Detalle-Perfil-de-los-profesores- a-vincular</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-2-Profesores/Anexo-1-Detalle-Perfil-de-los-profesores- a-vincular.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-2-Profesores/Anexo-1-Detalle-Perfil-de-los-profesores- a-vincular.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 3. Profesores</td>
								        <td>Anexo 1. Evidencias Artículo 40  Lit. a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-1-Evidencias-Articulo-40-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                             <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								             
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-1-Evidencias-Articulo-40-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Experiencia investigativa</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-2-Experiencia-investigativa.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span> 
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-3-Profesores/Anexo-2-Experiencia-investigativa.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 4. Profesores</td>
								        <td>Anexo 1. Evidencias Artículo 42 Lit. a), b) y c)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-1-Evidencias-Articulo-42-Lit-a)- b)-y-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-1-Evidencias-Articulo-42-Lit-a)- b)-y-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de desarrollo y capacitación</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-2-Plan-de-desarrollo-y-capacitacion.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-2-Plan-de-desarrollo-y-capacitacion.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		 
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Artículo 44 Lit. a),b),c) y d)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-3-Evidencias-Artículo- 44-Lit-a)-b)-c)-y-d).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/7-Condicion-7-Profesores/Criterio-4-Profesores/Anexo-3-Evidencias-Artículo- 44-Lit-a)-b)-c)-y-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
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
		            <!-- Octavo Grupo de Acordeón -->			            
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
							            	<p>Describa la dotación de los ambientes físicos y/o virtuales de aprendizaje que incorporan equipos, mobiliario, plataformas tecnológicas, sistemas informáticos o los que hagan sus veces, recursos bibliográficos físicos y digitales, bases de datos, recursos de aprendizaje e información, entre otros, y argumente cómo estos atienden los procesos formativos, el
		desarrollo de la investigación, innovación y/o creación artística y cultural, y la extensión.					            	
							            	</p>
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
									            	<p>Describa los mecanismos de capacitación y apropiación de los medios educativos para los estudiantes y profesores adscritos al programa y un plan de mantenimiento, actualización y reposición de estos medios, en el que además se demuestre:							            						            	
									            	</p>
									            	<p>a) La coherencia entre lo dispuesto para el programa y la política institucional de capacitación
		y apropiación de los medios educativos para los estudiantes y profesores.
									            	</p>
									            	<p>b) La existencia de un plan de mantenimiento, actualización y reposición de los medios educativos en el programa.</p>
									            	<p>c) La coherencia entre el plan de mantenimiento, actualización y reposición de los medios educativos en el programa y la política institucional.</p>
									            	
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
									            	<p>Describa los medios educativos para cada modalidad (presencial, a distancia, virtual, dual u otros desarrollos que combinen e integren las anteriores modalidades) y las estrategias que implementará el programa para atender las barreras de acceso y características de la población.					            	
									            	</p>
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
									            	<p>Describa los medios educativos disponibles según la modalidad del programa, en los centros de tutoría, prácticas o talleres.					            	
									            	</p>
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
									            	<p>Para los programas del campo de salud y bienestar y de psicología, describa los escenarios de práctica en los cuales se desarrollen prácticas formativas docencia servicio. 					            	
									            	</p>
									            	<p>Para programas de pregrado en el área de educación, describa las instituciones educativas de los niveles de preescolar, básica o medias para el desarrollo de las prácticas (pedagógicas, educativas, docentes, entre otras), así como estrategias previstas para garantizar el acompañamiento y seguimiento de dichas prácticas por parte de profesores de la IES que oferta el programa. 					            	
									            	</p>
									            	
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   </thead>
							   
							   <tbody>
								      <tr>
								        <td>Medios Educativos</td>
								        <td>Criterio 1. Medios Educativos</td>
								        <td>Anexo 1. Evidencias Art. 46 Lit. a),b),c) y d)</td>
								        <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>                                						        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Evidencias-Art-46-Lit-a)-b)-c)-y-d).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de adquisición-Medios Educativos</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-2-Plan-de-adquisicion-Medios-Educativos.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-2-Plan-de-adquisicion-Medios-Educativos.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art. 48 Lit. a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-3-Evidencias-Art-48-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-3-Evidencias-Art-48-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 4. Plan de mantenimiento-Medios Educativos</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-4-Plan-de-mantenimiento-Medios-Educativos.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-4-Plan-de-mantenimiento-Medios-Educativos.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 2. Medios Educativos</td>
								        <td>Anexo 1. Evidencias Artículo 48 Lit c),d) y e)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Evidencias-Articulo-48-Lit-c)-d)-y-e).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Evidencias-Articulo-48-Lit-c)-d)-y-e).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
		
								      <tr>
								        <td></td>
								        <td>Criterio 5. Medios Educativos</td>
								        <td>Anexo 1. Relación Escenarios de Práctica</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Relacion-Escenarios-de-Practica.pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/8-Condicion-8-Medios-Educativos/Anexo-1-Relacion-Escenarios-de-Practica.docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
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
			        <h4>9. Infraestructura física y tecnológica</h4>
		            <!-- Noveno Grupo de Acordeón --> 			            
				    <p>
					<div class="container">
						  <p>		  
						  <div id="accordion">
							    <div class="card">
							      <div class="card-header">
							        <a class="card-link" data-toggle="collapse" href="#i1">
							          Criterio 1. Infra. física y tecnológica
							        </a>
							      </div>
							      <div id="i1" class="collapse" data-parent="#accordion">
							        <div class="card-body">
										<h4>Criterio 1. Infra. física y tecnológica</h4><p>
										<h4>Pregunta orientadora</h4>
										<div class="panel-body">			
							            	<p>Describa los ambientes físicos y virtuales de aprendizaje específicos para el desarrollo de los procesos formativos, la investigación, innovación y/o creación artística y cultural, y la extensión, de acuerdo con las modalidades del programa. 					            	
							            	</p>
							            	
										</div>
										<h4>Respuesta</h4>
								        <div class="panel-body">
								             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
									        Criterio 2. Infra. física y tecnológica
									       </a>
								      </div>
								      <div id="i2" class="collapse" data-parent="#accordion">
									       <div class="card-body">
												<h4>Criterio 2. Infra. física y tecnológica</h4><p>
												<h4>Pregunta orientadora</h4>
												<div class="panel-body">			
									            	<p>Describa los instrumentos jurídicos, civiles o comerciales, que demuestran la disponibilidad de una infraestructura física y tecnológica para soportar el desarrollo del programa 					            	
									            	</p>
									            	
												</div>
												<h4>Respuesta</h4>
										        <div class="panel-body">
										             <label for="add-description">(La respuesta debe ser máximo 7000 caracteres con espacios)</label>
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
							        <th>Condición</th>
							        <th>Criterio</th>
							        <th>Anexo y/ó Guía</th>
							        <th>Acciones</th>
							      </tr>
							   
							   </thead>
							   
							   <tbody>
								      <tr>
								        <td>Infraestructura física y tecnológica</td>
								        <td>Criterio 1. Infra. física y tecnológica</td>
								        <td>Anexo 1. Evidencias Art. 50 Lit. a) y b)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-50-Lit-a)-y-b).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>						        
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-50-Lit-a)-y-b).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Plan de adquisición</td>
								        <th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								        
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-2-Plan-de-adquisicion.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
								            
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 3. Evidencias Art. 52 Lit. a), b) y c)</td>
								        <th><a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-3-Evidencias-Art-52-Lit-a)-b)-y-c).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
								            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>								            
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-3-Evidencias-Art-52-Lit-a)-b)-y-c).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 4. Plan de mantenimiento</td>
										<th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>										
										    <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-1-Infra-fisica-y-tecnologica/Anexo-4-Plan-de-mantenimiento.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>
								            
								        </th>
								        <!--<th>glyphicon glyphicon-refresh</th> -->
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td>Criterio 2. Infra. física y tecnológica</td>
								        <td>Anexo 1. Evidencias Art. 52 Lit. d) y e)</td>
										<th><a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-2-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-52-Lit-d)-y-e).pdf" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Ver Guía -pdf"><span aria-hidden="true" class="glyphicon glyphicon-eye-open"></span></a>
										    <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>										    
								            <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-2-Infra-fisica-y-tecnologica/Anexo-1-Evidencias-Art-52-Lit-d)-y-e).docx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía -word"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
								        </th>
								      </tr>
								      
								      <tr>
								        <td></td>
								        <td></td>
								        <td>Anexo 2. Infraestructura Física</td>
										<th><a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Registrar Información"><span aria-hidden="true" class="glyphicon glyphicon glyphicon glyphicon-pencil"></span>
                                            <a href="#" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Cargar Guía"><span aria-hidden="true" class="glyphicon glyphicon glyphicon-open"></span>										
										    <a href="procesos/programas/2.Registro-Calificado-Nuevo/9-Condicion-9-Infraestructura-fisica-y-tecnologica/Criterio-2-Infra-fisica-y-tecnologica/Anexo-2-Infraestructura-Fisica.xlsx" class="btn btn-link" role="button" data-toggle="tooltip" data-placement="bottom" title="Descargar Guía"><span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span></a>						            
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
				    <small>© 2022 - Desarrollado por Dirección de Aseguramiento de la Calidad -Udca. Sistema de Información, para el Aseguramiento de la Calidad Institucional</small>
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


