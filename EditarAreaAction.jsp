<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String codigo_idArea=request.getParameter("idarea");
String nombre_Area=request.getParameter("nombreArea");


int check=0; 
 

try{
	Connection con=ConnectionSac.getCon();
	Statement stmt=con.createStatement();
	String query="select * from area where idarea='"+ codigo_idArea +"'";
	
	ResultSet rs = stmt.executeQuery(query);
	
	while (rs.next()){
		check=1;
		String sql="update area SET nombreArea ='" + nombre_Area + "' where idarea ='" + codigo_idArea + "'";
		stmt.executeUpdate(sql);
		
		//System.out.print("Aqui si hay Registros");
		request.getRequestDispatcher("EditarArea.jsp?msg=valid").forward(request, response);
		
	};
	
	if (check==0){
		response.sendRedirect("EditarArea.jsp?msg=invalid");
	}
	rs.close();
	stmt.close();
}catch(Exception e){
	System.out.println(e);
}
%>


