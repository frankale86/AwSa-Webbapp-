http://localhost:8080/SacProyect/index.jsp<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String idfactor=request.getParameter("idfactor");
String nombrefactor=request.getParameter("nombre_factor");
String valor=request.getParameter("valor_asignado");

try{
	Connection con=ConnectionSac.getCon();
	
	String sql="insert into factor values (?,?,?)";
	PreparedStatement ps=con.prepareStatement(sql);	
	ps.setInt (1,Integer.parseInt(idfactor));
	ps.setString(2, (nombrefactor));
	ps.setString(3, (valor));
	ps.executeUpdate();	
	response.sendRedirect("Adfactor.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Adfactor.jsp?msg=invalid");
}
%>