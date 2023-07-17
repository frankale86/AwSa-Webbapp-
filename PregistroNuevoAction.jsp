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
String idproceso_programa = request.getParameter("idproceso_programa");
String fechaRegistro = request.getParameter("fechaRegistro");
String idproceso = request.getParameter("idproceso");
String idsubproceso = request.getParameter("idsubproceso");
String idfacultad = request.getParameter("idfacultad");
String idprograma = request.getParameter("idprograma");
String id = request.getParameter("id");
String idestado = request.getParameter("idestado");


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
	
	
	System.out.println(idproceso_programa + " " +
	                 		fechaRegistro + " " +
                                idproceso + " " +
                             idsubproceso + " " +
                               idfacultad + " " +
                               idprograma + " " +
                                       id + " " +
                                 idestado);	
	
	
	String sql="insert into proceso_programa values (?,?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);	

	//Lo que envio a la Bd
	ps.setInt (1,Integer.parseInt(idproceso_programa));	
	ps.setString(2, (fechaRegistro));		
	ps.setInt (3,Integer.parseInt(idproceso));
	ps.setInt (5,Integer.parseInt(idfacultad));
	ps.setInt (6,Integer.parseInt(idprograma));
	ps.setInt (4,Integer.parseInt(idsubproceso));	
	ps.setInt (7,Integer.parseInt(id));
	ps.setInt (8,Integer.parseInt(idestado));

	ps.executeUpdate();	
	
	response.sendRedirect("PregistroNuevo.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("PregistroNuevo.jspas.jsp?msg=invalid");
}
%>