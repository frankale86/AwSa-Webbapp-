<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String idarea=request.getParameter("idarea");
String nombreArea=request.getParameter("nombreArea");
try{
	Connection con=ConnectionSac.getCon();
	
	String sql="insert into area values (?,?)";
	PreparedStatement ps=con.prepareStatement(sql);
	
	
	ps.setInt (1,Integer.parseInt(idarea));
	ps.setString(2, (nombreArea));	
	ps.executeUpdate();
	
	response.sendRedirect("Adarea.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Adarea.jsp?msg=invalid");
}
%>