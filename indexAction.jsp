<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac
"%>
<%@page import="java.sql.Connection"%>
 	<meta charset="UTF-8">
 	<meta charset="utf-8">
<%
String usuario = request.getParameter("correo");
String clave = request.getParameter("clave");
String perfilU=request.getParameter("idperfil");

if ("admininicial".equals(usuario) && "admininicial".equals(clave)){	
	session.setAttribute("correo", usuario);
	response.sendRedirect("AdminHome.jsp");
} else {
	
	int z = 0; 
	 
	try{

		Connection con=ConnectionSac.getCon();
		Statement stmt=con.createStatement();
		String query="select * from usuarios where correo='" + usuario + "' and psw='" + clave + "'";
		
		
		//Pensandolo bien el Perfil no me interesa muchho
		//String query="select * from usuarios where correo='" + usuario + "' and psw='" + clave + "' and idperfil='" + perfilU +"'";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()){
			  z=1;
			  int perfil, facultad = 0;
	
	//en la Variable perfil, almaceno el perfil, si es 1 es administrador y si es 2, es directivo
	// aqui lo valido., ., .,			
	//esto es un ejercicio de validación de condición de perfil de usuario
	
	perfil = Integer.parseInt(rs.getString(9)); //lo Cambio a Entero., este es el idperfil
	facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
	
	//System.out.println("el Perfil del Usuario es = " + perfil);
	
	if (perfil==1) { 
		session.setAttribute("correo", usuario); //Colocar y/o Traer el Nombre del Usuario Logueado.,
		session.setAttribute("idfacultad", facultad);
		facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
		response.sendRedirect("home.jsp");        // Se va como Administrador.,
		//response.sendRedirect("HomeUser.jsp");				
	} else if (perfil==4){

		// En Junio 27 de 2023 wmvelez Agrega 
		// Solo para las Direcciones., envio el codigo del Perfil., ya que se encontro que en una Facultad
		// Hay Directores y Coordinadores, que hacen las funciones de un director., osea., estan a cargo
		// de uno o varios Programas y/o maestrias
		session.setAttribute("correo", usuario);
		session.setAttribute("idfacultad", facultad);		
		session.setAttribute("idperfil", perfilU);		
		facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
		response.sendRedirect("direcciones/HomeDirecciones.jsp");        // Se va como Director
		
		//response.sendRedirect("HomeUser.jsp");								
	}
	//Fin Condición.,  
		}
		
	//No tiene Registros el ResultSet
	if (z==0){
		response.sendRedirect("index.jsp?msg=notexist");
	}
	rs.close();
	stmt.close();
		}catch (Exception e){
	//System.out.println(e);
	response.sendRedirect("index.jsp?msg=invalid");
	}
}
%>
