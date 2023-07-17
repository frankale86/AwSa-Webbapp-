<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String idformacion = request.getParameter("idformacion");
String nombreFormacion=request.getParameter("descripcion_formacion");
try{
	Connection con=ConnectionSac.getCon();
	 
	String sql="insert into formacion values (?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	
	ps.setInt (1,Integer.parseInt(idformacion));
	ps.setString(2, (nombreFormacion));	
	ps.executeUpdate();
	
	response.sendRedirect("Adformacion.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Adformacion.jsp?msg=invalid");
}
%>