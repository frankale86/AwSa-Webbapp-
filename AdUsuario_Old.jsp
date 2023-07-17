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
    
<!-- Campos de la Tabla
	  1 cod_usuario ...
	  2 doc ...
	  3 nombres ...
	  4 apellidos ...
	  5 correo ...
	  6 psw ...
	  7 cel ...
	  8 id_ciudad ...
	  9 idperfil ...
	 10 id_estado
	 11 idfacultad
	 12 registro ...
 -->
 
 	
	<div class="container">
		<div class="actions text-left">		
		    <h2>Registro de Usuarios</h2>
			 <a><b><%
			 System.out.println("Usuario Activo : " + usuario);
			 %></b></a>		    	    	
	    	<hr size="3px" color="green"> <!-- Linea Verde -->
	    </div>
	    
		<!-- ****** -->
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

	   	 
	   	<div class="row-fluid">
	       	<div class="span12">	       	
	       		<form class="form-horizontal" action="AdUsuarioAction.jsp" method="POST">        
		              <div class="span6">
		                   <div class="area">	            
	                        
			                    <div class="control-group">
		                            <label class="control-label">Nro. Registro</label>	
		                            <div class="controls">
<!-- 1  -->  							 <input type="text" id="cod_usuario" name="cod_usuario" class="form-control" value="<%out.println(id);%>" readonly="readonly" required>
		                            </div>
		                        </div>	 	   	
   
   		                        <div class="control-group">
			                        <label class="control-label">Fecha de Registro</label>
			                        <div class="controls">								
<!-- 12 -->							 <input type="date" id="registro" name="registro" class="form-control">
								    </div>
							    </div>
							    
							    
   		                        <div class="control-group">
		                            <label class="control-label">Número de Identificación</label>		
		                            <div class="controls">
<!--2  -->                                <input type="text" id="doc" name="doc" class="form-control" placeholder="Número de Identificación" type="text" >
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
		                            <label class="control-label">Contraseña / Password</label>		
		                            <div class="controls">
<!--7 -->                                <input type="text" id="psw" name="psw" class="form-control" placeholder="Contraseña / Password" >
		                            </div>
		                        </div>   
   							</div>
   					</div>
<!-- .......................................................................    Segunda mitad de la Ventana -->
		            
		            <div class="span6">
		                <div class="area">
		                		                
		                    <div class="control-group">
	                            <label class="control-label">Número de Contacto</label>	
	                            <div class="controls">
<!--8 -->                            <input type="text" id="cel" name="cel" class="form-control" placeholder="Número Contacto / Celular" type="text" >
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
	   </div>
	     					
	</section>
	
	
	<!-- Fin Tabla de Procesos Traida de la Base de Datos  -->	
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

	</body>
</html>