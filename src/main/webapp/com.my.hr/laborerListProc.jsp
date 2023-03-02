<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl, com.my.hr.domain.Laborer'%>
<%
	LaborerService laborerService = new LaborerServiceImpl();
%>

<%= laborerService.getLaborers() %>