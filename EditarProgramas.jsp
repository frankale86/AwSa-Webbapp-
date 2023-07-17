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
		    <h2>Actualización Registro -Programa</h2>
			 <a><b><%
			 out.println("Usuario Activo : " + usuario);
			 %></b></a>		    	    	
	    	<hr> <!-- Línea -->
	    </div>
	    
		<!-- ****** -->
		<!-- control de AutoIncremente -->
		<%	
		    String idprograma=request.getParameter("idprograma");
            
			try {
				Connection con=ConnectionSac.getCon();
				Statement stmt=con.createStatement();
				String sql = "select * from programas where idprograma='"+ idprograma +"'";
				ResultSet rs = stmt.executeQuery(sql);
				while (rs.next()) {
					
//				    }
//				} catch (Exception e) {
					
//				}
		%>
		
		<%
		String fc=rs.getString("idfacultad");
		%> 
		
		
    <div class="actions text-right">
         <div class="controls">
              <!-- <button class="btn btn-success" type="submit">Adicionar Registro</button> -->
              <a href="Lprogramas.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
         </div>
    </div>
		
		<!-- Fin control de AutoIncremente -->
	   	<div class="row-fluid">
	       	<div class="span12">
	       		<form class="form-horizontal" action="EditarProgramasAction.jsp" method="POST">        
		              <div class="span6">
		                   <div class="area">
			                    <div class="control-group">
		                            <label class="control-label">Nro. Registro</label>	
		                            <div class="controls">
<!-- 1 -->							     <input type="text" id="idprograma" name="idprograma" class="form-control" value= "<%=rs.getString("idprograma")%>" readonly="readonly">
		                            </div>
		                        </div>	 	   	
   
		                        <div class="control-group">
			                        <label class="control-label">Fecha de Registro</label>
			                        <div class="controls">								
<!--2 -->							     <input type="date" id="fechaRegistro" name="fechaRegistro" class="form-control" value= "<%=rs.getString("fechaRegistro")%>">
								    </div>
							    </div>
			                    
<!-- X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X* -->

<!-- *X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X -->			                    

		                        <div class="control-group">
		                            <label class="control-label">Nombre del programa</label>		
		                            <div class="controls">
<!--4 -->                                <input type="text" id="nombreProgramaN" name="nombreProgramaN" class="form-control" value= "<%=rs.getString("nombreProgramaN")%>">
		                            </div>
		                        </div>
 

		                        <div class="control-group">
		                            <label class="control-label">Titulo que otorga</label>		
		                            <div class="controls">
<!--5 -->                                <input type="text" id="titulOtorgado" name="titulOtorgado" class="form-control" value= "<%=rs.getString("titulOtorgado")%>">                            
		                                
		                            </div>
		                        </div>	

			                    <div class="control-group">
		                            <label class="control-label">Campo amplio</label>		
		                            <div class="controls">
<!--6 -->                                <input type="text" id="campoAmplio" name="campoAmplio" class="form-control" value= "<%=rs.getString("campoAmplio")%>">                            
		                            </div>
		                        </div>	                        
		                        
		                        <div class="control-group">
		                            <label class="control-label">Campo específico</label>		
		                            <div class="controls">
<!--7 -->                                <input type="text" id="campoEspecifico" name="campoEspecifico" class="form-control" value= "<%=rs.getString("campoEspecifico")%>">
		                            </div>
		                        </div>		                        
		                        
		                        <div class="control-group">
		                            <label class="control-label">Campo detallado </label>		
		                            <div class="controls">
<!--8 -->                                <input type="text" id="campoDetallado" name="campoDetallado" class="form-control" value= "<%=rs.getString("campoDetallado")%>">
		                            </div>
		                        </div>		                        

		                        
		                        <div class="control-group">
		                            <label class="control-label">Número de créditos</label>		
		                            <div class="controls">
<!--11 -->                                <input type="text" id="nroCreditos" name="nroCreditos" class="form-control" value= "<%=rs.getString("nroCreditos")%>">
		                            </div>
		                        </div>			                        
		                        
		                        <div class="control-group">
		                            <label class="control-label">Nota Interna de creación</label>		
		                            <div class="controls">
<!--12 -->                                <input type="text" id="notaInterna" name="notaInterna" class="form-control" value= "<%=rs.getString("notaInterna")%>">
		                            </div>
		                        </div>			                        
		                        		                        
		                        <div class="control-group">
		                            <label class="control-label">Instancia que cumple la norma</label>		
		                            <div class="controls">
<!--13 -->                                <input type="text" id="instancia" name="instancia" class="form-control" value= "<%=rs.getString("instancia")%>">
		                            </div>
		                        </div>			                        

		                        <div class="control-group">
		                            <label class="control-label">Código SNIES</label>		
		                            <div class="controls">
<!--14 -->                                <input type="text" id="snies" name="snies" class="form-control" value= "<%=rs.getString("snies")%>">
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
<!--15 -->							 <input type="date" id="inicioActividades" name="inicioActividades" class="form-control" value= "<%=rs.getString("inicioActividades")%>">
							    </div>
						    </div>
						    
							<div class="control-group">
	                            <label class="control-label">Resolución de registro calificado vigente</label>	
	                            <div class="controls">
<!--16 -->                          <input type="text" id="resolucionVigencia" name="resolucionVigencia" class="form-control" value= "<%=rs.getString("resolucionVigencia")%>">	                                
	                            </div>
	                        </div>


	                        <div class="control-group">
	                            <label class="control-label">Resolución de acreditación</label>	
	                            <div class="controls">
<!--17 -->                          <input type="text" id="resolucionAcreditacion" name="resolucionAcreditacion" class="form-control" value= "<%=rs.getString("resolucionAcreditacion")%>">	                                
	                            </div>
	                        </div>

		                    <div class="control-group">
	                            <label class="control-label">Duración del programa (en semestres)</label>	
	                            <div class="controls">
<!--18 -->                           <input type="text" id="duracion" name="duracion" class="form-control" value= "<%=rs.getString("duracion")%>">
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">Porcentaje de inclusión de tecnología (indique %)</label>	
	                            <div class="controls">
<!--19 -->                           <input id="porcentajeT" name="porcentajeT" class="form-control" value= "<%=rs.getString("porcentajeT")%>">	                                
	                            </div>
	                        </div>

              				<div class="control-group">
	                            <label class="control-label">Periodicidad de admisión del programa</label>	
	                            <div class="controls">
<!--20 -->                           <input id="periodicidad" name="periodicidad" class="form-control" value= "<%=rs.getString("periodicidad")%>">                           
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">Jornada de ofrecimiento del programa</label>	
	                            <div class="controls">
<!--21 -->                           <input id="jornada" name="jornada" class="form-control" value= "<%=rs.getString("jornada")%>">                            
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">Número de estudiantes aprobados primer curso</label>	
	                            <div class="controls">
<!--22 -->                           <input id="nroEstudiantes" name="nroEstudiantes" class="form-control" value= "<%=rs.getString("nroEstudiantes")%>">
	                            </div>
	                        </div>

	                        <div class="control-group">
	                            <label class="control-label">Valor de la matrícula</label>	
	                            <div class="controls">
<!--23 -->                           <input id="valorMatricula" name="valorMatricula" class="form-control" value= "<%=rs.getString("valorMatricula")%>">
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
		                                <button type="submit" name="adicionar" class="btn btn-success">Actualizar Registro</button></a>
		                                <!-- <button class="btn btn-success" type="submit">Adicionar Registro</button> -->
		                                <a href="Lprogramas.jsp"><button class="btn btn-warning" type="button">Regresar/Cancelar</button></a>
		                           </div>
		                      </div>
<!-- -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.- -->		                      
		                </div>
		            </div>

	            </form>
       			<% 
					String msg=request.getParameter("msg");

					if ("valid".equals(msg)){
					%>
						<figure class="text-center">
						<p>
						<strong class="text-center" style="color:#198754">Información se actualizado correctamente!</strong>
					<% } %>
					<%
					if ("invalid".equals(msg)){
					%>
						<figure class="text-center">
						<p>
						<strong class="text-center" style="color:#dc3545">No se pudo modificar, este Registro en la base de datos, intentalo de nuevo!</strong>
				<% } %>
				
			<!--  -->
			<%
			}
			
		} catch (Exception e){
			System.out.println(e);
		}
		%>
	</div>
</body>


</html>
