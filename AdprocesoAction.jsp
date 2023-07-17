http://localhost:8080/SacProyect/index.jsp<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String idproceso=request.getParameter("idproceso");
String descripcion=request.getParameter("nombre_factor");


try{
	Connection con=ConnectionSac.getCon();
	
	String sql="insert into proceso values (?,?)";
	PreparedStatement ps=con.prepareStatement(sql);	
	ps.setInt (1,Integer.parseInt(idproceso));
	ps.setString(2, (descripcion));	
	ps.executeUpdate();	
	response.sendRedirect("Adproceso.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Adproceso.jsp?msg=invalid");
}
%>