<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>

<%
String usuario = request.getParameter("correo");
String clave = request.getParameter("clave");

if ("admininicial".equals(usuario) && "admininicial".equals(clave)){	
	session.setAttribute("correo", usuario);
	response.sendRedirect("AdminHome.jsp");
} else {
	
	int z = 0; 
	 
	try{
		
		Connection con=ConnectionSac.getCon();
		Statement stmt=con.createStatement();
		String query="select * from sac.usuarios where correo='" + usuario + "' and psw='" + clave + "'";		
		
		//Hago Pruebas sin el Id_estado y el Perfil 
		//String query="select * from sac.usuarios where correo='" + usuario + "' and psw='" + clave + "' and idperfil = '1' and id_estado = '1' ";
		
		//Perfil del Administrador.,.,.,.,.,		
		//String query="select * from sac.usuarios where correo='" + usuario + "' and psw='" + clave + "' and psw= 1";
		//String query="select * from sac.usuarios where usuario='" + usuario + "' and clave='" + clave + "'" + "' and idperfil =' 1 ";

		ResultSet rs = stmt.executeQuery(query);
		
		while (rs.next()){
	z=1;
	int perfil, facultad = 0;
	
	//en la Variable perfil, almaceno el perfil, si es 1 es administrador y si es 2, es directivo
	// aqui lo valido., ., .,			
	//esto es un ejercicio de validación de condición de perfil de usuario
	perfil = Integer.parseInt(rs.getString(9)); //lo Cambio a Entero.,
	facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
	//System.out.println("el Perfil del Usuario es = " + perfil);
	
	if (perfil==1) { 
		session.setAttribute("correo", usuario);
		session.setAttribute("idfacultad", facultad);
		facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
		response.sendRedirect("home.jsp");        // Se va como Administrador
		//response.sendRedirect("HomeUser.jsp");				
	} else if (perfil==2){

		session.setAttribute("usuario", usuario);
		facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
		response.sendRedirect("direcciones/HomeDirecciones.jsp");        // Se va como Director
		//response.sendRedirect("HomeUser.jsp");								
	}

	//Fin Condición.,  
		}
		
	//No tiene Registros el ResultSet
	if (z==0){
		response.sendRedirect("ModuloLogin.jsp?msg=notexist");
	}
	rs.close();
	stmt.close();
		}catch (Exception e){
	System.out.println(e);
	response.sendRedirect("ModuloLogin.jsp?msg=invalid");
	}
}
%>
