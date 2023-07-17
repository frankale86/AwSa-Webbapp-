<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String idmodalidad=request.getParameter("idmodalidad");
String modalidad=request.getParameter("modalidad");
try{
	Connection con=ConnectionSac.getCon();
	
	String sql="insert into modalidad values (?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	
	
	ps.setInt (1,Integer.parseInt(idmodalidad));
	ps.setString(2, (modalidad));	
	ps.executeUpdate();
	
	response.sendRedirect("AdModalidad.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("AdModalidad.jsp?msg=invalid");
}
%>