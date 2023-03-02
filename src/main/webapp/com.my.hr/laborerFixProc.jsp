<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList, java.time.LocalDate' %>
<%@ page import='com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl, com.my.hr.domain.Laborer'%>
<%@ page import='java.time.format.DateTimeFormatter, java.time.format.DateTimeParseException' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	LaborerService laborerService = new LaborerServiceImpl();
	
	String strLaborerId = request.getParameter("laborerId");
	String laborerName = request.getParameter("laborerName");
	String strHireDate = request.getParameter("hireDate");
	
	int laborerId = Integer.parseInt(strLaborerId);
	LocalDate hireDate = null;
	
	try {
		hireDate = LocalDate.parse(strHireDate, DateTimeFormatter.ISO_DATE);
	} catch(DateTimeParseException e) {}
	
	laborerService.fixLaborer(new Laborer(laborerId,laborerName,hireDate));
%>

<c:redirect url='main.jsp'/>