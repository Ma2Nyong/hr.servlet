<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList, java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter, java.time.format.DateTimeParseException' %>
<%@ page import='com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl, com.my.hr.domain.Laborer'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	LaborerService laborerService = new LaborerServiceImpl();
%>

	<%= laborerService.getLaborers() %>