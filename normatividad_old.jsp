<%@page import="java.sql.*"%>
<%@page import="connection.ConnectionSac"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>

<!--  -->
<head>

  <meta charset="UTF-8">
  <title>Sistema de Información, para el Aseguramiento de la Calidad Institucional y de Programa...  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css'>
  <!--  <link rel='stylesheet' href='https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css'> -->
  <link rel='stylesheet' href='https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css'>
  <link rel="stylesheet" href="./style.css">
  <link rel="stylesheet" href="css/main.css">

  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    
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

	 
			
	<div class="full-width navLateral-body-logo text-center tittles">
		<i class="zmdi zmdi-close btn-menu"></i> S.A.C. 
	</div>
			
<!-- fin Parte superior Verde -->	
	<div class="container">
		<div class="actions text-left">	
		    <h3>Normatividad Vigente Miisterio de Educación Nacional (MEN), Consejo Nacional de Acreditación (CNA) e Institucional U.D.C.A</h3>
	    	<p>Link: menú general / normatividad</a></p>
	    </div>
	    
		<div class="actions text-left">
		    <a href="Adnormatividad.jsp"><button type="submit" name="adicionar" class="btn btn-success">Adicionar Registro</button></a>
		    <a href="home.jsp"><button type="button" name="regresar" class="btn btn-warning" data-toggle="modal" data-target="#squarespaceModal">Regresar / Cancel</button></a>
     		<p>
     	</div>
<!-- Incluyo Tabs -->


<div class="container bootstrap snippet">
 
    <div class="row">
		<div class="col-sm-12">
	         <ul class="nav nav-tabs  justify-content-center">
	             <li class="active"><a data-toggle="tab" href="#home">Ministerio de Educación Nacional (MEN)</a></li>
	             <li><a data-toggle="tab" href="#messages">Consejo Nacional de Acreditación (CNA)</a></li>
	             <li><a data-toggle="tab" href="#udca">Normatividad Institucional U.D.C.A</a></li>
	         </ul>
	         
	         <div class="tab-content">
	             <div class="tab-pane active" id="home">
					<br>   				    
   				    <h4>Normatividad Ministerio de Educación Nacional (MEN)</h4>   				    
		             <table id="ejemplo" class="table table-striped table-bordered" style="width:100%">
					        <thead>
								<tr>
									<th>Titulo</th>									
									<th>Descripción</th>									
									<th>Pdf</th>
																		
								</tr>
							</thead>					
							<tbody>
									<%
									try{
										Connection con=ConnectionSac.getCon();
										Statement stmt=con.createStatement();
										String query="SELECT * FROM normatividad WHERE  idtiponormatividad = 0;";
										ResultSet rs = stmt.executeQuery(query);
										while (rs.next()){
									%>
												<tr>																																
													<td><%=rs.getString(3)%></td>
													<td><%=rs.getString(4)%></td>
													<td> <div class="Text-center">
													          <a href="<%=rs.getString(5)%>"><img src="img/inventario-configuracion.9ffb2be.png" width="30" height="30" /></a>
													     </div>
													</td>													

													<td>     
												      <div class="btn-group">
												        <button class="btn dropdown-toggle" data-toggle="dropdown">
												          Acciones
												          <span class="caret"></span>
												        </button>
												        <ul class="dropdown-menu">
												          <li><a href="EditarArea.jsp?idarea=<%=rs.getString(1)%> type="button">Actualizar</a></li>
												          <li><a href="#">Detalles</a></li>												          
												        </ul>
												      </div>
													</td>										
																									
													<!-- 																																		
													<div class="btn-group" role="group" aria-label="Basic outlined example">												     
	   												     <td><a title="Actualizar" type="button" href="EditarArea.jsp?idarea=<%=rs.getString(1)%>"><i class="fa fa-edit"></a></td>
													</div>
													 -->
												</tr>											
										<%
										}
										}
									catch(Exception e)
									{
										System.out.println(e);
										}
									%>
								</tbody>
			    		</table>
	           <!-- ........ -->     		                	
	           	
	             </div>
	             
	             <div class="tab-pane" id="messages">
                     <hr size="5px" color="green">
                     <h4>Normatividad Consejo Nacional de Acreditación (CNA)</h4>
		             <table id="ejemplo2" class="table table-striped table-bordered" style="width:100%">
					        <thead>
								<tr>
									<th>Titulo del Área</th>									
									<th>Descripción</th>									
									<th>Pdf</th>
									<th>Acciones</th>									
								</tr>
							</thead>					
							<tbody>
									<%
									try{
										Connection con=ConnectionSac.getCon();
										Statement stmt=con.createStatement();
 										String query="SELECT * FROM normatividad WHERE  idtiponormatividad = 1;";
 										ResultSet rs = stmt.executeQuery(query);
 										while (rs.next()){
									%>
												<tr>																																
													<td><%=rs.getString(3)%></td>
													<td><%=rs.getString(4)%></td>
													<td> <div class="Text-center">
													          <a href="<%=rs.getString(5)%>"><img src="img/inventario-configuracion.9ffb2be.png" width="30" height="30"/></a>
													     </div>
													</td>													
													<td>     
												      <div class="btn-group">
												        <button class="btn dropdown-toggle" data-toggle="dropdown">
												          Acciones
												          <span class="caret"></span>
												        </button>
												        <ul class="dropdown-menu">
												          <li><a href="EditarArea.jsp?idarea=<%=rs.getString(1)%> type="button">Actualizar</a></li>
												          <li><a href="#">Detalles</a></li>												          
												        </ul>
												      </div>
													</td>										
																									
													<!-- 																																	
													<div class="btn-group" role="group" aria-label="Basic outlined example">												     
	   												     <td><a title="Actualizar" type="button" href="EditarArea.jsp?idarea=<%=rs.getString(1)%>"><i class="fa fa-edit"></a></td>
													</div>
													 -->
												</tr>											
										<%
											}
								
										}catch(Exception e){
											System.out.println(e);
										}
										%>
								</tbody>
			    		</table>
	             
			<!-- ........ -->
	             </div><!--/tab-pane-->
	             
	             
	        <!-- Normatividad Udca -->
	             <div class="tab-pane" id="udca">
                     <hr size="5px" color="green">
                     <h4>Normatividad Normatividad Institucional U.D.C.A</h4>
		             <table id="ejemplo2" class="table table-striped table-bordered" style="width:100%">
					        <thead>
								<tr>
									<th>Titulo del Área</th>									
									<th>Descripción</th>									
									<th>Pdf</th>
									<th>Acciones</th>									
								</tr>
							</thead>					
							<tbody>
									<%
									try{
										Connection con=ConnectionSac.getCon();
										Statement stmt=con.createStatement();
 										String query="SELECT * FROM normatividad WHERE  idtiponormatividad = 2;";
 										ResultSet rs = stmt.executeQuery(query);
 										while (rs.next()){
									%>
												<tr>																																
													<td><%=rs.getString(3)%></td>
													<td><%=rs.getString(4)%></td>
													<td> <div class="Text-center">
													          <a href="<%=rs.getString(5)%>"><img src="img/inventario-configuracion.9ffb2be.png" width="30" height="30"/></a>
													     </div>
													</td>													
													<td>     
												      <div class="btn-group">
												        <button class="btn dropdown-toggle" data-toggle="dropdown">
												          Acciones
												          <span class="caret"></span>
												        </button>
												        <ul class="dropdown-menu">
												          <li><a href="EditarArea.jsp?idarea=<%=rs.getString(1)%> type="button">Actualizar</a></li>
												          <li><a href="#">Detalles</a></li>												          
												        </ul>
												      </div>
													</td>										
																									
													<!-- 																																	
													<div class="btn-group" role="group" aria-label="Basic outlined example">												     
	   												     <td><a title="Actualizar" type="button" href="EditarArea.jsp?idarea=<%=rs.getString(1)%>"><i class="fa fa-edit"></a></td>
													</div>
													 -->
												</tr>											
										<%
											}
								
										}catch(Exception e){
											System.out.println(e);
										}
										%>
								</tbody>
			    		</table>
			
	             </div>	        
	        

	        </div>
		</div>
	</div>
	        
</div>


<!-- Fin Tabs ... -->     	
     	
     	<hr>
		<div class ="Text-center">		
		     <!-- Copyright  -->
		     <h6>Universidad de Ciencias Aplicadas y Ambientales -UDCA</h6>
		     <h6>© 2022 - Desarrollado por Dirección de Aseguramiento de la Calidad -Udca. Sistema de Información, para el Aseguramiento de la Calidad Institucional</h6>
		</div>		
			
	</div>

	    </script><script  src="./script.js"></script>		     
		</div>
		
		
	</div> 


	<!-- partial -->
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.min.js'></script>
	<script src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
	<script src='https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap4.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js'></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js'></script>
	<script src='https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js'>
	</script><script  src="./script.js"></script>

</body>


</html>