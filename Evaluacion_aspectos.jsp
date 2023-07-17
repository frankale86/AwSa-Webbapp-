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
		    <h2>Evaluación Aspectos, con fines de acreditación en alta calidad</h2>
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
	       		      <div class="span4">
	                         <div class="control-group">
	                             <label class="control-label">Fecha de Registro</label>	
	                             <div class="controls">
	                                 <input id="fechaRegistro" placeholder=
	                                 "Fecha de Registro" type="date" >
	                             </div>
	                         </div>	                        
	       		      </div>
	       		     
		       		  <div class="span4">
	
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
	
	        		  <div class="span4">
       		  		     <div class="control-group">
                            <label class="control-label">Para:</label>	
                            <div class="controls">
                                <select id="country" name="country" class="input-xlarge">
			                            <option value="" selected="selected">(Tipo de Proceso)</option>
			                            <option value="0">Institucional</option>
			                            <option value="1">Programa</option>
                       			</select>
                            </div>
	                     </div>
	      		      </div>
	      		      
	      		      

	        		  <div class="span12">
		      		      <!-- ---------------------------------------------------------------------------------------------------- -->
	 	                  <div class="area">		                        
			                 <div class="text-right">
			                       <div class="controls">	                                 
			                           <button class="btn btn-success" type="submit">Adicionar Registro</button>
			                            <a href="home.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
			                       </div>
			                  </div>	                      
			               </div>
			      		  <!-- ---------------------------------------------------------------------------------------------------- -->
	        		  </div>
	      		      

	       		
	       		
	       		
	       		

	                        		        
<!-- .......................................................................    Segunda mitad de la Ventana -->
		            <div class="span6">
		            </div>
		            	            
	            </form>
	        </div>
	        
	    </div>
	
	</div>
	<!-- Detalles del Programa Dividido en Dos partes de la Ventana en Una Sola Fila -->


</body>


</html>