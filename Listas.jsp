<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
	  <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
	  <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
	  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
<title>Recuperación Contraseña Sistema Sac</title>


</head>

<body>
	<div class="container">
	
	     <div class="row">
			 <div class="span12">
				 <form class="form-horizontal" action='' method="POST">
	
					   <div id="legend">
					         <legend class="">Recuperación de Contraseña</legend>
					   </div>
				    
	<!--  Datos del Formulario -->
	
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
			    							while (rst.next())
			    							{

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
					   <p>
	
	<!--  Fin Datos del Formulario -->
				    
				    
				    <div class="control-group">
					     <!-- Button -->
					     <div class="controls">
					          <button class="btn btn-success">Registro nueva contraseña</button>
					          <a href="index.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">... Cancel</button></a>
					     </div>
				    </div>
	
				 </form>
			 </div>
		 </div>
	</div>

</body>


</html>