<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
//String codigoidprograma=request.getParameter("idprograma");
//String nombreProgramaN=request.getParameter("nombreProgramaN");

//Lo que llega, por el método POST
String idprograma = request.getParameter("idprograma");
String fechaRegistro = request.getParameter("fechaRegistro"); 
String idfacultad=request.getParameter("idfacultad");
String nombreProgramaN=request.getParameter("nombreProgramaN");
String titulOtorgado=request.getParameter("titulOtorgado");
String campoAmplio=request.getParameter("campoAmplio");
String campoEspecifico=request.getParameter("campoEspecifico");
String campoDetallado=request.getParameter("campoDetallado");
String idformacion=request.getParameter("idformacion");
String idmodalidad=request.getParameter("idmodalidad");
String nroCreditos=request.getParameter("nroCreditos");
String notaInterna=request.getParameter("notaInterna");
String instancia=request.getParameter("instancia");
String snies=request.getParameter("snies");
String inicioActividades=request.getParameter("inicioActividades");
String resolucionVigencia=request.getParameter("resolucionVigencia");
String resolucionAcreditacion=request.getParameter("resolucionAcreditacion");
String duracion=request.getParameter("duracion");
String porcentajeT=request.getParameter("porcentajeT");
String periodicidad=request.getParameter("periodicidad");
String jornada=request.getParameter("jornada");
String nroEstudiantes=request.getParameter("nroEstudiantes");
String valorMatricula=request.getParameter("valorMatricula");

int check=0;  
 
 try{
	Connection con=ConnectionSac.getCon();
	Statement stmt=con.createStatement();
	String query="select * from programas where idprograma='"+ idprograma +"'";
	
	ResultSet rs = stmt.executeQuery(query);
	
	//Revisión Información Actualizción 
	System.out.print("Esta es la Información a Actualizar--- Desde aqui");
	System.out.print(idprograma);
	System.out.print(fechaRegistro);
	System.out.print(idfacultad);
	System.out.print(nombreProgramaN);
	System.out.print(titulOtorgado);
	System.out.print(campoAmplio);
	System.out.print(campoEspecifico);
	System.out.print(campoDetallado);
	System.out.print(idformacion);
	System.out.print(idmodalidad);
	System.out.print(nroCreditos);
	System.out.print(notaInterna);
	System.out.print(instancia);
	System.out.print(snies);
	System.out.print(inicioActividades);
	System.out.print(resolucionVigencia);
	System.out.print(resolucionAcreditacion);
	System.out.print(duracion);
	System.out.print(porcentajeT);
	System.out.print(periodicidad);
	System.out.print(jornada);
	System.out.print(nroEstudiantes);
	System.out.print(valorMatricula); 
	System.out.print("Hasta aca --- ");
	
	while (rs.next()){
		check=1;
		//String sql="update programas SET nombreProgramaN ='" + nombreProgramaN + "', fechaRegistro='" + fechaRegistro + "', idfacultad ='" + idfacultad + "', nombreProgramaN='" + nombreProgramaN + "titulOtorgado ='" + titulOtorgado 
		//	       + "', campoAmplio ='" + campoAmplio + "', campoEspecifico ='" + campoEspecifico + "', campoDetallado ='" + campoDetallado + "', idformacion ='" + idformacion + "', idmodalidad ='" + idmodalidad + "', nroCreditos ='" + nroCreditos
		//         + "', notaInterna ='" + notaInterna + "', instancia ='" + instancia + "', snies ='" + snies + "', inicioActividades ='" + inicioActividades + "', resolucionVigencia ='" + resolucionVigencia + "', resolucionAcreditacion ='" + resolucionAcreditacion
		//         + "', duracion ='" + duracion + "', porcentajeT ='" + porcentajeT + "', periodicidad ='" + periodicidad + "', jornada ='" + jornada + "', nroEstudiantes ='" + nroEstudiantes + "', valorMatricula ='" + valorMatricula + "' where idprograma ='" + idprograma + "'";
	    String sql="update programas SET nombreProgramaN ='" + nombreProgramaN + "', fechaRegistro='" + fechaRegistro  + "', titulOtorgado ='" + titulOtorgado + "', campoAmplio ='" + campoAmplio + "', campoEspecifico ='" + campoEspecifico + "', campoDetallado ='" + campoDetallado + "', nroCreditos ='" + nroCreditos + "', notaInterna ='" + notaInterna + "', instancia ='" + instancia + "', snies ='" + snies + "', inicioActividades ='" + inicioActividades + "', resolucionVigencia ='" + resolucionVigencia + "', resolucionAcreditacion ='" + resolucionAcreditacion + "', duracion ='" + duracion + "', porcentajeT ='" + porcentajeT + "', periodicidad ='" + periodicidad + "', jornada ='" + jornada + "', nroEstudiantes ='" + nroEstudiantes + "', valorMatricula ='" + valorMatricula + "' where idprograma ='" + idprograma + "'";	stmt.executeUpdate(sql);
		
		//System.out.print("Aqui si hay Registros");
		request.getRequestDispatcher("EditarProgramas.jsp?msg=valid").forward(request, response);
		
	};
	
	if (check==0){
		response.sendRedirect("EditarProgramas.jsp?msg=invalid");
	}
	rs.close();
	stmt.close();
}catch(Exception e){
	System.out.println(e);
}
%>


