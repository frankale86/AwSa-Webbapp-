<!DOCTYPE html>
<html>
	<head>
	
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
	<meta charset="utf-8">
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
		crossorigin="anonymous">
		<title>Bienvenido al Sistema de Información, para el Aseguramiento de la Calidad Institucional y de Programa...</title>
	    <link rel="shortcut icon" href="icon/BannerStoreTIC2.png">
	    
	    <!-- Esto es para colocar los iconos del usuario y contraseña -->
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>    
	    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">    
	    <!-- Hasta aqui -->
	    
	    
	    <!-- Esto es para colocar la línea Divisoria vertical -->
	    <link rel="stylesheet" href="./css/divider.css">	
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>	
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>    
	    <!-- Fin referencia línea Divisoria vertical -->
	   
	</head>
	<body>
	    <div class ="row">
	         <img src="img/espacio.png" alt="Avatar" class="img-responsive" width="75" height="50">
	    </div>	
		<div class="container">
		     <div class="row grid-divider">
			      <div class="col-sm-6">
		 		       <div class="col-padding">
		                    <div class="text-right">
						        <!-- <h3>Bienvenidos a</h3><p> -->
							    <div class ="row">
							         <img src="img/espacio.png" alt="Avatar" class="img-responsive" width="75" height="50">
							    </div>						        
							        <img src="img/logo.png" class="img-responsive" width="250" height="100">
						        <br>
						        <label>Sistema de Información, para el Aseguramiento de la Calidad Institucional y de Programa...</label>
								<script>
										var meses = new Array ("enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre");
										var f=new Date();
										document.write(f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear()+ "...");
								</script>
					        </div>
				       </div>
			     </div>

			     <div class="col-sm-4">
				      <div class="col-padding">				       
					       <figure class="text-center">
					               <h3>Registro Nueva Contraseña</h3>
					               <img src="img/icon_cambiocontrasena.png" alt="Avatar" class="img-responsive" width="85" height="60">
		                    </figure>                                						
							<!-- <h4 class="card-title text-center mb-4 mt-1">Sign in</h4> -->
							<hr>
							<!-- <p class="text-success text-center">Some message goes here</p>  -->
							<form class="form-sign" action="OlvidePassAction.jsp" method="POST">							
	
								  <div class="form-group">
									   <div class="input-group">
											<div class="input-group-prepend">
											    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
											</div>
											<input type="text" name="username" class="form-control" id="username" placeholder="Digite su Correo Electrónico / Usuario del Sistema" type="email" required>
									   </div> <!-- input-group.// -->
								  </div> <!-- form-group// -->
	
								  <div class="form-group">
										<div class="input-group">
											<div class="input-group-prepend">
											    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
											 </div>
										    <input type="password" id="password" name="password" class="form-control" id="formGroupExampleInput" placeholder="Digite su nueva contraseña" required>
										</div> <!-- input-group.// -->
								  </div> <!-- form-group// -->
								
								  <div class="form-group">
									   <!-- <button type="submit" name="accion" value="Ingresar" class="btn btn-success btn-block"> Registrar Nueva Contraseña </button> -->
							          <button class="btn btn-success">Registro nueva contraseña</button>
							          <a href="index.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">... Cancelar</button></a>

								  </div>

							</form>
				      </div>
			     </div>
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
	
	    <!-- Footer -->
		<div class="container">
		     <div class="row">
			      <div class="col-sm-2">
			      </div>
			      <div class="col-sm-8">
						<div class="text-center"> <br>
						    <link rel="icon" href="https://www.udca.edu.co/wp-content/uploads/2020/12/favicon_64.png" sizes="32x32" />
						    <small>Universidad de Ciencias Aplicadas y Ambientales U.D.C.A.</small><p>
						    <small>Sistema de Información, para el Aseguramiento de la Calidad Institucional</small><br>
						    <small>Dirección de Aseguramiento de la Calidad U.D.C.A. © 2022</small><br>
	  						    <small>Desarrollado por. wmvc</small>
						</div>
			      </div>
			      <div class="col-sm-2">
			      </div>
			 </div>
		</div>
		<!-- Fin Footer -->
	
	
		
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
			integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
			integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
			crossorigin="anonymous"></script>
	
	
	
	
	</body>
</html>