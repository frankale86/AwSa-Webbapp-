<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
	<title>Sistema de Aseguramiento de la Calidad...</title>
<link rel="shortcut icon" href="icon/BannerStoreTIC2.png">
</head>
<body>
	<div class="container mt-4 col-lg-4">
		<div class="card col-sm-11">
		 	<!-- <div class="card-body" style="border:#198754 1px solid"> -->
			<div class="card-body">
			
				<form class="form-sign" action="ModuloLoginAction.jsp" method="POST">
					<div class="form-group text-center">
						<!-- Colocar Logo Se se Requiere para el Login
						<img alt="" width="300" src="img/BannerStoreTIC2.png"/>						  						
						<figure class="text-center">
							<h2></h2>
						-->
						
						<figure class="text-center">
							<!--<h5 style="color:#198754">Bienvenido a SAC -Sistema de Aseguramiento de la Calidad...</h5>  -->
							<h5>Bienvenido a SAC -Sistema de Aseguramiento de la Calidad...</h5>
							<p>
						<div class="mb-3">
							<input type="text" name="correo" class="form-control"	id="formGroupExampleInput" placeholder="Digite su Correo Electr�nico" required>
						</div>
						
						<div class="mb-3">
							<input type="password" name="clave" class="form-control" id="formGroupExampleInput" placeholder="Digite contrase�a" required>
						</div>
						
						<input style="background-color:#198754;color:#FFFFFF;border:#198754 1px solid" type="submit" name="accion" value="Ingresar" class="btn btn-warning btn">
						
					</div>
				</form>
				
				<div class="row row-cols-2 row-cols-lg-7 g-1 g-lg-3">
					<!--<div class="col" >
      					<div><h6 class="text-center"><a style="color:#198754"  href="UserNew.jsp">Reg�strate con nosotros</a></h6></div>
    				</div>
    				
    				<div class="col">
      					<div><h6 class="text-center"><a style="color:#198754" href="DarBaja.jsp">Darme de baja en SAC</a></h6></div>
    				</div>
    				
    				<div class="col">
      					<div><h6 class="text-center"><a style="color:#198754" href="Reactivar.jsp">Reactivarme en StoreTIC</a></h6></div>
    				</div>    				
    				
    				-->
    				
    				<div class="col">
      					<div><h6 class="text-center"><a style="color:#198754" href="OlvidePass.jsp">Olvid� mi contrase�a</a></h6></div>
    				</div>
    				
    			</div>
    			<% 
					String msg=request.getParameter("msg");

					if ("notexist".equals(msg)){
					%>
						<figure class="text-center">
						<!-- <strong class="text-center" style="color:#dc3545">Usuario o Contrase�a Incorrectos</strong> -->
						<strong class="text-center" >Usuario o Contrase�a Incorrectos</strong>
					<% } %>
					<%
					if ("invalid".equals(msg)){
					%>
						<figure class="text-center">
						<!-- <strong class="text-center" style="color:#dc3545">Algo sali� mal! Intentalo de nuevo!</strong> -->
						<strong class="text-center">Algo sali� mal! Intentalo de nuevo!</strong>
						
				<% } %>
			</div>
		</div>
	</div>
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