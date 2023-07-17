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
String cod_usuario = request.getParameter("cod_usuario");  //Este es el Identificador del Usuario
String doc = request.getParameter("doc"); //Este es en Numero de Cédula del Usuario
String nombres = request.getParameter("nombres");
String apellidos = request.getParameter("apellidos");
String correo = request.getParameter("correo");
String psw = request.getParameter("psw");
String cel = request.getParameter("cel");
String codigodepto = request.getParameter("codigodepto");
String idperfil = request.getParameter("idperfil");
String idestado = request.getParameter("idestado");
String idfacultad = request.getParameter("idfacultad");
String registro = request.getParameter("registro");

try{
	Connection con=ConnectionSac.getCon();
	
	//Para Verificar Impresión., Imprimo por consola coy mostrando la captura 
	//de la Información por consola.,.,.,
	
	System.out.println(cod_usuario + " " +
	                   doc + " " +
	               nombres + " " +
	             apellidos + " " +
	                correo + " " +
	                   psw + " " +
	                   cel + " " +
	           codigodepto + " " + //
	              idperfil + " " +
	              idestado + " " + //
	            idfacultad + " " +
	              registro);
	
	String sql="insert into usuarios values (?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);	

	//Lo que envio a la Bd
	  ps.setInt (1,Integer.parseInt(cod_usuario));
	  ps.setInt (2,Integer.parseInt(doc));
	ps.setString(3,(nombres));
	ps.setString(4,(apellidos));
	ps.setString(5,(correo));
	ps.setString(6,(psw));
   ps.setString (7,(cel));
	  ps.setInt (8,Integer.parseInt(codigodepto));
	  ps.setInt (9,Integer.parseInt(idperfil));
	 ps.setInt (10,Integer.parseInt(idestado));
	 ps.setInt (11,Integer.parseInt(idfacultad));
   ps.setString(12,(registro));	
	
	ps.executeUpdate();	
	
	response.sendRedirect("AdUsuario.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("AdUsuario.jsp?msg=invalid");
}
%>