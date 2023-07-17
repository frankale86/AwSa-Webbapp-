<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String directorescol=request.getParameter("directorescol");
String nombres_apellidos=request.getParameter("nombres_apellidos");
String correo_institucional=request.getParameter("correo_institucional");
String correo2=request.getParameter("correo_alterno");

try{
	Connection con=ConnectionSac.getCon();
	
	String sql="insert into directores values (?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	
	
	ps.setInt (1,Integer.parseInt(directorescol));
	ps.setString(2, (nombres_apellidos));	
	ps.setString(3, (correo_institucional));
	ps.setString(4, (correo2));
	ps.executeUpdate();
	
	response.sendRedirect("Addirectivos.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Addirectivos.jsp?msg=invalid");
}
%>