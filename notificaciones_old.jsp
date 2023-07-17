<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html> 
 
<!--  -->
<head>
	<meta charset="ISO-8859-1">
	<title>Sistema de Aseguramiento de la Calidad - Universidad de Ciencias Aplicadas y Ambientales U.D.C.A</title>
	 
	<!-- Referentes para los Tabs -->
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="../css/tabs.css">
	<link rel="stylesheet" href="css/main.css">
	
	<link rel="stylesheet" href="css/notificaciones.css">
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<!-- Referentes para los Tabs -->
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="../css/tabs.css">
	<link rel="stylesheet" href="css/main.css">

</head>


<!--  -->
<body>

	<!-- Colocar Menui Lateral si se amerita., -->
    <!-- Por ahora estoy haciendo Pruebas de la Informacion de la Tabla para que se pueda Ver., -->	
	<%
		String usuario=session.getAttribute("correo").toString();
		%>
	<%
	String facultad=session.getAttribute("idfacultad").toString();
	%> 
	
<!-- Parte superior Verde -->
	<div class="full-width navBar">
		<div class="full-width navBar-options">			
			<nav class="navBar-options-list">
				<ul class="list-unstyle">				
					<li class="text-condensedLight noLink" ><small>Nombre de Usuario</small>
					</li>
					
					<li class="noLink">
						<figure>
							<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
						</figure>
					</li>
					
				</ul>
			</nav>
		</div>
	</div> 

	<!-- navLateral  esta Seccion es la que divide el Area del Menu Lateral
	<section class="full-width navLateral">		
	</section>-->
	
			 
	<div class="full-width navLateral-body-logo text-center tittles">
		<i class="zmdi zmdi-close btn-menu"></i> S.A.C. 
	</div>
			
<!-- fin Parte superior Verde -->	
	
	<div class="container">
		<hr>
		<div class="actions text-left">	
		    <h1>Notificaciones -Procesos</h1>
	    	<p>Link: menú general / Notificaciones -Procesos</a></p>
	    </div>
		<hr>
   		
   		<!-- Cuerpo del Mensaje =========================== -->
		<div class="container">
		
		
		  <form class="form-horizontal" role="form">

			<!-- Opciones de la Notificación -->
			
			<!-- Fin Notificaciones de laq Notofovacación -->		  
		  
		  
		  
		    <fieldset>
		      <div class="form-group">
		        <label class="col-sm-3 control-label" for="card-holder-name">Email para :</label>
		        <div class="col-sm-9">		          		
                     <div class="controls">
                       <%
                       try {
                    	   Connection con=ConnectionSac.getCon();
                    	   Statement stmt=con.createStatement();
                    	   String sql="SELECT * FROM usuarios where idfacultad !=0 order by nombres;";
                    	   ResultSet rst = stmt.executeQuery(sql);
                       %>		                            
						<select name="nombres" class="form-select" required>
 								<option selected></option>
							<% while (rst.next()){
  							%>
 								<option value=<%=rst.getString(3)%>><%=rst.getString(3)%> <%=rst.getString(4)%></option>
    							<%}%>
 							</select>
							<%
						} catch (Exception e){
							System.out.println(e);
					}
				%>         
                        </div>
		        </div>
		      </div>
		      
		      <div class="form-group">
			        <label class="col-sm-3 control-label" for="card-number">Asunto :</label>
			        <div class="col-sm-9">
			          <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Asunto">
			        </div>
		      </div>
		
		      <div class="form-group">
			        <label class="col-sm-3 control-label" for="cvv">Descripción :</label>
			        <div class="col-sm-9">
			             <textarea class="form-control" id="message" name="message" placeholder="Message" rows="10"></textarea>
			          <!-- <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code"> -->
			        </div>		        
		      </div>
		
			  <div class="actions text-right">		    
				    <a href="home.jsp">
				    <button type="button" class="btn btn-success">Enviar</button>
				    <button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Descartar / Cancel</button></a>				    
		   			<p>
		   	   </div>
		      
		    </fieldset>
		    
		  </form>
		</div>
		<!-- Fin Cuerpo del Mensaje -->
   		
   		<!-- Por si se quiere mostrar informacion por Tabs 
   		<div class="container bootstrap snippet">
		    <div class="row">
				<div class="col-sm-12">
			         <ul class="nav nav-tabs  justify-content-center">
			             <li class="active"><a data-toggle="tab" href="#home">Ministerio de Educación Nacional (Men)</a></li>
			             <li><a data-toggle="tab" href="#messages">Consejo Nacional de Acreditación (CNA)</a></li>
			         </ul>
			         
			         <div class="tab-content">
			         
			             <div class="tab-pane active" id="home">
		    		          <!-- ........Información Tab 
			             </div>
			             
			             <div class="tab-pane" id="messages">
		    		          <!-- ........Información Tab     		                	
			             </div>
			             
			        </div>
				</div>
			</div>
		</div>
		===========================-->
   		
   		
 	    <div class ="Text-center">		
		     <!-- Copyright  -->
		     <hr>
		     <h6>Universidad de Ciencias Aplicadas y Ambientales -UDCA</h6>
		     <h6>© 2022 - Desarrollado por Dirección de Aseguramiento de la Calidad -Udca. Sistema de Información, para el Aseguramiento de la Calidad Institucional</h6>
		</div>	
 			    		  
	    		  
	</div>
	    

     	



</body>


</html>