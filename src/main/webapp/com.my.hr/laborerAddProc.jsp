<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList, java.time.LocalDate' %>
<%@ page import='com.my.hr.dao.LaborerDao, com.my.hr.dao.LaborerDaoImpl'%>
<%@ page import='com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl, com.my.hr.domain.Laborer'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	LaborerDao laborerDao = new LaborerDaoImpl();
	LaborerService laborerService = new LaborerServiceImpl();

	String laborerName = request.getParameter("laborerName");
	String hireDate = request.getParameter("hireDate");
	
		LocalDate date = null;
		
		date = LocalDate.parse(hireDate); 
		laborerService.addLaborer(laborerName, date);
%>
<c:redirect url='main.jsp'/>