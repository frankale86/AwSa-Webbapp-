<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>

	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

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
    
	<!-- Detalles del Programa Dividido en Dos partes de la Ventana en Una Sola Fila -->
	<div class="container">
		<div class="actions text-left">		
		    <h2>Registro -Proceso, para el Aseguramiento de la Calidad Institucional o de Programa</h2>
			 <a><b><%
			 out.println("Usuario Activo : " + usuario);
			 %></b></a>		    	    	
	    	<hr> <!-- Linea -->
	    </div>

		<!-- ****** -->
		<!-- ****** -->
 	   	<!--.1.-->
	   	<!--.2.-->
	   	<!--.3.-->
	   	<!--.4.-->
	   	<!--.5.-->
	   	<!--.6.-->
	   	<!--.7.-->
	   	<!--.8.-->
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
	        
<!-- Creo una Linea y coloco las Persianas -->
<!-- XxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXx -->

<div class="span12">	       		
     <div class="row">
 		 <div class="col-sm-12">
	          <ul class="nav nav-tabs  justify-content-center">
	              <P>
	              <li class="active"><a data-toggle="tab" href="#Tab2">2. Justificación</a></li>
	              <li><a data-toggle="tab" href="#Tab3">3. Aspectos curriculares</a></li>
	              <li><a data-toggle="tab" href="#Tab4">4. Organización actividades académicas</a></li>
	              <li><a data-toggle="tab" href="#Tab5">5. Investigación innovación</a></li>
	              <li><a data-toggle="tab" href="#tab6">6. Relación con el sector externo</a></li>
	              <li><a data-toggle="tab" href="#Tab7">7. Profesores</a></li>
	              <li><a data-toggle="tab" href="#Tab8">8. Medios Educativos</a></li>
	              <li><a data-toggle="tab" href="#Tab9">9. Infraestructura física y tecnológica</a></li>                                      
	              <!-- <li><a data-toggle="tab" href="#proceso">Proceso de Aseguramiento</a></li> -->
	          </ul>
			         
	          <div class="tab-content">
	              <div class="tab-pane active" id="Tab2"> <!-- -->
	                   <h4>Tab 2</h4>						                   							
	              </div>
	             
<!--  -->
	              <div class="tab-pane" id="Tab3"> <!-- -->
	                   <h4>Tab 3</h4>	              
	              </div>

<!--  -->
	              <div class="tab-pane" id="Tab4"> <!-- -->
	                   <h4>Tab 4</h4>	              
	              </div>

<!--  --> 
	              <div class="tab-pane" id="Tab5"> <!-- -->
	                   <h4>Tab 5</h4>	              
	              </div>

<!--  -->
	              <div class="tab-pane" id="Tab6"> <!-- -->
	                   <h4>Tab 6</h4>	              
	              </div>
	              
<!--  -->
	              <div class="tab-pane" id="Tab7"> <!-- -->
	                   <h4>Tab 7</h4>	              
	              </div>

<!--  -->
	              <div class="tab-pane" id="Tab8"> <!-- -->
	                   <h4>Tab 8</h4>	              
	              </div>

<!--  -->
	              <div class="tab-pane" id="Tab9"> <!-- -->
	                   <h4>Tab 9</h4>	              
	              </div>
	              
	         </div>
			        
				 </div>
			 </div>
		</div>
        <!-- .......... Fin Tabs -->
 		 </div>
 	</div>
 </div> 
<!-- XxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXxXx -->
<!-- Fin Persianas -->	        
	        

	        
	        
	        
	    </div>
	
	</div>
	
	
	
	<!-- Detalles del Programa Dividido en Dos partes de la Ventana en Una Sola Fila -->


</body>


</html>