<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");


int check=0;

try{
	Connection con=ConnectionSac.getCon();
	Statement stmt=con.createStatement();
	//String query="select * from usuarios where correo='" + username + "' and psw='" + password + "' and correo_electronico='" + correo_electronico + "' and usuario='" + usuario + "'";
	//String query="select * from usuarios where correo='" + username + "' and psw='" + password + "'";
	String query="select * from usuarios where correo='" + username + "'";
	ResultSet rs=stmt.executeQuery(query);
	
	while (rs.next()){
		check=1;
		//String sql="update usuarios set psw='" + psw + "' where cedula='" + cedula + "' and nombre_completo='" + nombre_completo + "' and correo_electronico='" + correo_electronico + "' and usuario='" + usuario + "' and estado='activo'";
		String sql="update usuarios set psw='" + password + "' where correo='" + username + "'";
		stmt.executeUpdate(sql);
		response.sendRedirect("OlvidePass.jsp?msg=done");
	}
	
	if (check==0){
		response.sendRedirect("OlvidePass.jsp?msg=invalid");
	}
	rs.close();
	stmt.close();
}catch(Exception e){
	System.out.println(e);
}
%>
