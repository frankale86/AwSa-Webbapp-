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
					<form class="form-sign" action="OlvidePassAction.jsp" method="POST">
						  <fieldset>
						    <div id="legend">
						         <legend class="">Recuperación de Contraseña</legend>
						    </div>
						    
						    <div class="control-group">
							      <!-- Username 
							      <label class="control-label"  for="username">Username</label>-->
							      <div class="controls">
							           <input type="text" id="username" name="username" placeholder="Digite su Correo Electrónico / Usuario del Sistema" class="input-xlarge">
							      </div>
						    </div>
						    
						    <div class="control-group">
							      <!-- Password
							      <label class="control-label" for="password">Password</label>-->
							      <div class="controls">
								       <input type="password" id="password" name="password" placeholder="Digite Nueva contraseña" class="input-xlarge">			        
							      </div>
						    </div>
						    
						    <div class="control-group">
							     <!-- Button -->
							     <div class="controls">
							          <button class="btn btn-success">Registro nueva contraseña</button>
							          <a href="index.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">... Cancel</button></a>
							     </div>
						    </div>
						    
						  </fieldset>
					</form>
					<p></p>
					<figure class="text-center">
					<%
					String msg=request.getParameter("msg");
					
					if ("done".equals(msg)){
						%>
							<strong style="color:#198754" class="text-center">Contraseña modificada satisfactoriamente!</strong>
						<% } %>
						<%
					
					if ("invalid".equals(msg)){
						%>
							<strong style="color:#dc3545" class="text-center">Los datos ingresados no coinciden o el cliente no esta registrado, por favor valide e intente nuevamente</Strong>
						<% }
						
						%>
				</div>
			</div>
		</div>
	</body>
</html>