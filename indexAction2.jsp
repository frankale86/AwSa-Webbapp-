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


if ("".equals(usuario) && "".equals(clave)){	
	//session.setAttribute("correo", usuario);
	response.sendRedirect("index.jsp");
} else {
	
	int z = 0; 
	 
	try{

		Connection con=ConnectionSac.getCon();
		Statement stmt=con.createStatement();
		String query="select * from usuarios where correo='" + usuario + "' and psw='" + clave + "'";		
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()){
			  z=1;
			  //int perfil, facultad = 0;
			  int perfil, perfilU, facultad, programa, idUsuario = 0;
	
	//en la Variable perfil, almaceno el perfil, si es 1 es administrador y si es 2, es directivo
	// aqui lo valido., ., .,			
	//esto es un ejercicio de validación de condición de perfil de usuario
	
	perfil = Integer.parseInt(rs.getString(9)); //lo Cambio a Entero., este es el idperfil	
	perfilU = Integer.parseInt(rs.getString(9)); //lo Cambio a Entero., este es el idperfil	
	facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
	programa = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
	idUsuario = Integer.parseInt(rs.getString(1)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
	
	//capturo el Codigo del Usuario para enviarlo a Lprogramas., para que solo muestre los programas que le pertenecen a ese usuario
	
	//System.out.println("el Perfil del Usuario es = " + perfil);
	
	if (perfil==1) { 
		session.setAttribute("correo", usuario); //Colocar y/o Traer el Nombre del Usuario Logueado.,
		session.setAttribute("idfacultad", facultad);				
		facultad = Integer.parseInt(rs.getString(11)); //Envio IdFacultad., para poder buscar Todos los Programas de Acuerdo al Usuario Logueado.,
		session.setAttribute("cod_usuario", idUsuario);
		response.sendRedirect("home.jsp");        // Se va como Administrador.,
		//response.sendRedirect("HomeUser.jsp");				
	} else if (perfil!=1){
		
		session.setAttribute("correo", usuario);
		session.setAttribute("idfacultad", facultad);
		session.setAttribute("idperfil", perfilU);		
		session.setAttribute("cod_usuario", idUsuario);
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
	System.out.println(e);
	//response.sendRedirect("index.jsp?msg=invalid");
	}
}
%>
