<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="connection.ConnectionSac"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String id  = request.getParameter("idprograma");
//String fechaRegistro  = request.getParameter("fechaRegistro");
//String codigofacultad = request.getParameter("codigofacultad");
//String nombre_programa = request.getParameter("nombre_programa");
//String titulo = request.getParameter("titulo");
//String campo_amplio= request.getParameter("campo_amplio");
//String campo_especifico = request.getParameter("campo_especifico");
//String campo_detallado= request.getParameter("campo_detallado");
//String nombreformacion= request.getParameter("nombreformacion");
//String nombremodalidad = request.getParameter("nombremodalidad");
//String nro_creditos = request.getParameter("nro_creditos");
//String nota_interna = request.getParameter("nota_interna");
//String instancia = request.getParameter("instancia"); 
//String snies = request.getParameter("snies");
//String inicioActividades = request.getParameter("inicioActividades (Date)");
//String resolucionVigenvia = request.getParameter("resolucionVigenvia");
//String resolucionAcreditacion = request.getParameter("resolucionAcreditacion");
//String duracion = request.getParameter("duracion");
//String porcentajeT = request.getParameter("porcentajeT");
//String periodicidad = request.getParameter("periodicidad");
//String jornada = request.getParameter("jornada");
//String nro_estudiantes = request.getParameter("nro_estudiantes");
//String valor_matricul = request.getParameter("valor_matricul");
try{
	Connection con=ConnectionSac.getCon();
	
	//String sql="insert into programas values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String sql="insert into programas values (?)";
	
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt (1,Integer.parseInt(id));
	//ps.setString(2, (fechaRegistro));
	
	//ps.setString(3, (nombrefacultad));
	//ps.setString(4, (nombre_programa));

	

	//ps.setString(5,"titulo_otorgado");
	//ps.setString(6,"campo_amplio");
	//ps.setString(7,"campo_especifico");
	//ps.setString(8,"campo_detallado");
	//ps.setString(9,"inicio_actividades");
	//ps.setString(10,"formacion");
	//ps.setString(11,"modalidad");
	//ps.setString(12,"creditos");
	//ps.setString(13,"resolucion_reg_calificado_vig");
	//ps.setString(14,"nota_interna_cracion");
	//ps.setString(15,"instancia_cumple_norma");
	//ps.setString(16,"snies");
	//ps.setString(17,"resolucion_acreditacion");
	//ps.setString(18,"durcion_programa");
	//ps.setString(19,"porcentaje_inclusion_tec");
	//ps.setString(20,"periodicidad_admision_programa");
	//ps.setString(21,"jornada_ofrecimiento");
	//ps.setString(22,"numero_estudiantes_aprobados");
	// Fin Campos de la Tabla
	

	
	//ps.setInt (1,Integer.parseInt(idperfil));
	//ps.setString(2, (perfil));
	//ps.setInt (1,Integer.parseInt(id));
	//ps.setInt (1,Integer.parseInt(codigo_facultad));
	//ps.setInt (2,Integer.parseInt(formacion));
	//ps.setInt (3,Integer.parseInt(modalidad));
	//ps.setInt (4,Integer.parseInt(creditos));
	//ps.setInt (5,Integer.parseInt(snies));
	//ps.setInt (6,Integer.parseInt(durcion_programa));
	//ps.setInt (7,Integer.parseInt(numero_estudiantes_aprobados));
	//ps.setInt (8,Integer.parseInt());
	//ps.setInt (9,Integer.parseInt());
	//ps.setInt (10,Integer.parseInt());
	//ps.setInt (11,Integer.parseInt());
	//ps.setInt (12,Integer.parseInt());
	//ps.setInt (13,Integer.parseInt());
	//ps.setInt (14,Integer.parseInt());
	//ps.setInt (15,Integer.parseInt());
	//ps.setInt (16,Integer.parseInt());
	//ps.setInt (17,Integer.parseInt());
	//ps.setInt (18,Integer.parseInt());
	//ps.setInt (19,Integer.parseInt());
	
	ps.executeUpdate();
	response.sendRedirect("Adprogramas.jsp?msg=valid");
	ps.close();
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Adprogramas.jsp?msg=invalid");
}
%>