<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%
   	String usuario=session.getAttribute("correo").toString();
   	%>
<%
String facultad=session.getAttribute("idfacultad").toString();

%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%

//Lo que llega, por el método POST
String idprograma = request.getParameter("idprograma");
String fechaRegistro = request.getParameter("fechaRegistro"); 
String idfacultad=request.getParameter("idfacultad");
String nombreProgramaN=request.getParameter("nombreProgramaN");
String titulOtorgado=request.getParameter("titulOtorgado");
String campoAmplio=request.getParameter("campoAmplio");
String campoEspecifico=request.getParameter("campoEspecifico");
String campoDetallado=request.getParameter("campoDetallado");
String idformacion=request.getParameter("idformacion");
String idmodalidad=request.getParameter("idmodalidad");
String nroCreditos=request.getParameter("nroCreditos");
String notaInterna=request.getParameter("notaInterna");
String instancia=request.getParameter("instancia");
String snies=request.getParameter("snies");
String inicioActividades=request.getParameter("inicioActividades");
String resolucionVigencia=request.getParameter("resolucionVigencia");
String resolucionAcreditacion=request.getParameter("resolucionAcreditacion");
String duracion=request.getParameter("duracion");
String porcentajeT=request.getParameter("porcentajeT");
String periodicidad=request.getParameter("periodicidad");
String jornada=request.getParameter("jornada");
String nroEstudiantes=request.getParameter("nroEstudiantes");
String valorMatricula=request.getParameter("valorMatricula");

//String fileupload=request.getParameter("fileupload");
//int id_estado=1;
// Notas de Campos: 
// System.out.println("La fecha esta asi " + id + "Para saber si Va Null., ., ., ., ., ");
// En conclusión no manejo formato de Fecha solo va directo al campo tal cual lo lee de ComboDate, o l Datacombo;
// Fin Notas sobre de Campos:
	
try{
	Connection con=ConnectionSac.getCon();
	
	//Para Verificar Impresión., Imprimo por consola coy mostrando la captura 
	//de la Información por consola.,.,.,
	
	System.out.println(idprograma+ " " + 
	                   fechaRegistro + " " + 
			           idfacultad + " " + 
	                   nombreProgramaN + " " + 
			           titulOtorgado + " " + 
	                   campoAmplio + " " + 
			           campoEspecifico + " " + 
	                   campoDetallado + " " + 
			           idformacion + " " + 
	                   idmodalidad + " " + 
			           nroCreditos + " " + 
	                   notaInterna + " " + 
			           instancia + " " + 
	                   snies + " " + 
			           inicioActividades+ " " + 
	                   resolucionVigencia + " " + 
			           resolucionAcreditacion + " " + 
	                   duracion + " " + 
			           porcentajeT + " " + 
	                   periodicidad+ " " + 
			           jornada + " " + 
	                   nroEstudiantes + " " + 
			           valorMatricula);
	
	//System.out.println(idprograma + " " + fechaRegistro 
	//							  + " " + idfacultad 
	//							  + " " + nombreProgramaN
	//							  + " " + titulOtorgado
	//		                      + " " + campoAmplio
	//		                      + " " + campoEspecifico
	//		                      + " " + campoDetallado
	//		                      + " " + idformacion
	//		                      + " " + idmodalidad
	//		                      + " " + nroCreditos
	//		                      + " " + notaInterna
	//		                      + " " + instancia
	//		                      + " " + snies
	//                            + " " + inicioActividades	                              
	//                            + " " + resolucionVigencia
	//                            + " " + resolucionAcreditacion
	//                            + " " + duracion
	//                            + " " + porcentajeT	                              
	//                            + " " + periodicidad
	//                            + " " + jornada
	//                            + " " + nroEstudiantes
	//                            + " " + valorMatricula);
	
	String sql="insert into programas values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);	

	//Lo que envio a la Bd
	  ps.setInt (1,Integer.parseInt(idprograma));
	ps.setString(2, (fechaRegistro));	
	  ps.setInt (3,Integer.parseInt(idfacultad));
	ps.setString(4, (nombreProgramaN));	
	ps.setString(5, (titulOtorgado));	
	ps.setString(6, (campoAmplio));
	ps.setString(7, (campoEspecifico));
	ps.setString(8, (campoDetallado));
	  ps.setInt (9,Integer.parseInt(idformacion));	
	  ps.setInt (10,Integer.parseInt(idmodalidad));	
	ps.setString(11, (nroCreditos));
	ps.setString(12, (notaInterna));	
	ps.setString(13, (instancia));
	ps.setString(14, (snies));
	ps.setString(15, (inicioActividades));	
	ps.setString(16, (resolucionVigencia));
	ps.setString(17, (resolucionAcreditacion));
	ps.setString(18, (duracion));
	ps.setString(19, (porcentajeT));	
	ps.setString(20, (periodicidad));
	ps.setString(21, (jornada));
	ps.setString(22, (nroEstudiantes));
	ps.setString(23, (valorMatricula));
	//ps.setString(24, (fileupload));
  	//  ps.setInt (25, (id_estado));
  	
	ps.executeUpdate();	
	
	response.sendRedirect("Adprogramas.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Adprogramas.jsp?msg=invalid");
}
%>