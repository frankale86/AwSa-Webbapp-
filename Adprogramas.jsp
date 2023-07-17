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
		    <h2>Registro Programas</h2>
			 <a><b><%
			 out.println("Usuario Activo : " + usuario);
			 %></b></a>		    	    	
	    	<hr size="3px" color="green"> <!-- Linea Verde -->
	    </div>
	    
	
	
		<!-- ****** -->
		<!-- control de AutoIncremente -->
						<%	int id = 1;
						try {
							Connection con=ConnectionSac.getCon();
							Statement stmt=con.createStatement();
							String sql = "SELECT max(idprograma) FROM programas";
							ResultSet rst = stmt.executeQuery(sql);
							while (rst.next()) {
								id = rst.getInt(1);
								id = id + 1;
								}
							} catch (Exception e) {
								
							}
						%>
		<!-- Fin control de AutoIncremente -->

	   	
	   	<div class="row-fluid">
	       	<div class="span12">	       	
	       		<form class="form-horizontal" action="AdprogramaAction.jsp" method="POST">        
		              <div class="span6">
		                   <div class="area">		            
	                        
			                    <div class="control-group">
		                            <label class="control-label">Nro. Registro</label>	
		                            <div class="controls">
	<!-- 1 -->							<input type="text" id="idprograma" name="idprograma" class="form-control" value="<%out.println(id);%>" readonly="readonly" required>
		                            </div>
		                        </div>	 	   	
   
		                        <div class="control-group">
			                        <label class="control-label">Fecha de Registro</label>
			                        <div class="controls">								
	<!--2 -->							 <input type="date" id="fechaRegistro" name="fechaRegistro" class="form-control">
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
	<!--3 -->  							 <select id="idfacultad" name="idfacultad" class="form-select" required>
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
		                            <label class="control-label">Nombre del programa</label>		
		                            <div class="controls">
<!--4 -->                                <input type="text" id="nombreProgramaN" name="nombreProgramaN" class="form-control" placeholder="Nombre del Programa" >
		                            </div>
		                        </div>
 

		                        <div class="control-group">
		                            <label class="control-label">Titulo que otorga</label>		
		                            <div class="controls">
<!--5 -->                                <input type="text" id=titulOtorgado name="titulOtorgado" class="form-control" placeholder="Titulo que Otorga" >                            
		                                
		                            </div>
		                        </div>	

			                    <div class="control-group">
		                            <label class="control-label">Campo amplio</label>		
		                            <div class="controls">
<!--6 -->                                <input type="text" id=campoAmplio name="campoAmplio" class="form-control" placeholder="Campo Amplio" >                            
		                            </div>
		                        </div>	                        
		                        
		                        <div class="control-group">
		                            <label class="control-label">Campo espec�fico</label>		
		                            <div class="controls">
<!--7 -->                                <input type="text" id=campoEspecifico name="campoEspecifico" class="form-control" placeholder="Campo espec�fico" >
		                            </div>
		                        </div>		                        
		                        
		                        <div class="control-group">
		                            <label class="control-label">Campo detallado </label>		
		                            <div class="controls">
<!--8 -->                                <input type="text" id=campoDetallado name="campoDetallado" class="form-control" placeholder="Campo espec�fico" >
		                            </div>
		                        </div>		                        

		                        <div class="control-group">
				                     <label class="control-label" for=
		                            "formacion">Nivel de formaci�n</label>		
		                            <div class="controls">
			                            <%
			                            try {
			                            	Connection con=ConnectionSac.getCon();
			                            	Statement stmt=con.createStatement();
			                            	String sql="select idformacion, nombreformacion from formacion order by nombreformacion";
			                            	ResultSet rst = stmt.executeQuery(sql);
			                            %>		              
<!--9 -->  	   						        <select id="idformacion" name="idformacion" class="form-select" required>
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
				                     <label class="control-label" for=
		                            "formacion">Modalidad</label>		
		                            <div class="controls">
			                            <%
			                            try {
			                            	Connection con=ConnectionSac.getCon();
			                            	Statement stmt=con.createStatement();
			                            	String sql="select idmodalidad, modalidad from modalidad order by modalidad";
			                            	ResultSet rst = stmt.executeQuery(sql);
			                            %>		                            
<!--10 -->  	   						        <select id="idmodalidad" name="idmodalidad" class="form-select" required>
		    								<option selected></option>
			    							<% while (rst.next()){
			    							%>
		    								<option value=<%=rst.getString(1)%>><%=rst.getString(2)%></option>
		      							<%}%>
	 	    							</select>
		    							<%
												} catch (Exception e){
													System.out.println(e);
											}
										%>         
		                            </div>
		                        </div>
		                        
		                        <div class="control-group">
		                            <label class="control-label">N�mero de cr�ditos</label>		
		                            <div class="controls">
<!--11 -->                                <input type="text" id=nroCreditos name="nroCreditos" class="form-control" placeholder="N�mero de cr�ditos" >
		                            </div>
		                        </div>			                        
		                        
		                        <div class="control-group">
		                            <label class="control-label">Nota Interna de creaci�n</label>		
		                            <div class="controls">
<!--12 -->                                <input type="text" id=notaInterna name="notaInterna" class="form-control" placeholder="Nota Interna de creaci�n" >
		                            </div>
		                        </div>			                        
		                        		                        
		                        <div class="control-group">
		                            <label class="control-label">Instancia que cumple la norma</label>		
		                            <div class="controls">
<!--13 -->                                <input type="text" id=instancia name="instancia" class="form-control" placeholder="Instancia que cumple la norma" type="text" >
		                            </div>
		                        </div>			                        

		                        <div class="control-group">
		                            <label class="control-label">C�digo SNIES</label>		
		                            <div class="controls">
<!--14 -->                                <input type="text" id=snies name="snies" class="form-control" placeholder="C�digo SNIES" type="text" >
		                            </div>
		                        </div>
		                </div>
		                
		            </div>
<!-- .......................................................................    Segunda mitad de la Ventana -->
		            
		            <div class="span6">
		                <div class="area">		                
	                        <div class="control-group">
		                        <label class="control-label">Inicio de actividades</label>	
		                        <div class="controls">								
<!--15 -->							 <input type="date" id="inicioActividades" name="inicioActividades" class="form-control">
							    </div>
						    </div>
						    
							<div class="control-group">
	                            <label class="control-label">Resoluci�n de registro calificado vigente</label>	
	                            <div class="controls">
<!--16 -->                          <input type="text" id="resolucionVigencia" name="resolucionVigencia" class="form-control" placeholder="Resoluci�n de Registro Calificado Vigente" type="text" >	                                
	                            </div>
	                        </div>


	                        <div class="control-group">
	                            <label class="control-label">Resoluci�n de acreditaci�n</label>	
	                            <div class="controls">
<!--17 -->                          <input type="text" id="resolucionAcreditacion" name="resolucionAcreditacion" class="form-control" placeholder="Resoluci�n de Acreditaci�n" type="text" >	                                
	                            </div>
	                        </div>

		                    <div class="control-group">
	                            <label class="control-label">Duraci�n del programa (en semestres)</label>	
	                            <div class="controls">
<!--18 -->                           <input type="text" id="duracion" name="duracion" class="form-control" placeholder="Duraci�n del programa (en semestres)" type="text" >
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">Porcentaje de inclusi�n de tecnolog�a (indique %)</label>	
	                            <div class="controls">
<!--19 -->                           <input id="porcentajeT" name="porcentajeT" class="form-control" placeholder="Porcentaje de inclusi�n de tecnolog�a (indique %)" type="text" >	                                
	                            </div>
	                        </div>

              				<div class="control-group">
	                            <label class="control-label">Periodicidad de admisi�n del programa</label>	
	                            <div class="controls">
<!--20 -->                           <input id="periodicidad" name="periodicidad" class="form-control" placeholder="Periodicidad de admision del programa" type="text" >                           
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">Jornada de ofrecimiento del programa</label>	
	                            <div class="controls">
<!--21 -->                           <input id="jornada" name="jornada" class="form-control" placeholder="Jornada de ofrecimiento del programa" type="text" >                            
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">N�mero de estudiantes aprobados primer curso</label>	
	                            <div class="controls">
<!--22 -->                           <input id="nroEstudiantes" name="nroEstudiantes" class="form-control" placeholder="N�mero de estudiantes aprobados primer curso" type="text" >
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">Valor de la matr�cula</label>	
	                            <div class="controls">
<!--23 -->                           <input id="valorMatricula" name="valorMatricula" class="form-control" placeholder="Valor de la Matr�cula" type=text >
	                            </div>
	                        </div>

							<div class=" col-sm-12">
		                      	  <hr>
			                 </div>
			                  <!-- <input type="file" id="fileupload" onchange="readURL(this);" multiple="multiple" required>  -->
<!--24 -->                     	  <input type="file" id="fileupload" onchange="readURL(this);" multiple="multiple">
		                      <hr>
		                        
		                      <div class="control-group">
		                           <div class="controls">
		                                <button class="btn btn-success" type="submit">Adicionar Registro</button>
		                                <a href="home.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
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
	     					
	</section>
	
	
	<!-- Fin Tabla de Procesos Traida de la Base de Datos  -->	
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

	</body>
</html>