<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.dao.LaborerDao,com.my.hr.dao.LaborerDaoImpl,
				com.my.hr.service.LaborerService, com.my.hr.service.LaborerServiceImpl,
				com.my.hr.presentation.Console, com.my.hr.presentation.LaborerIo'%>
<%
	LaborerDao laborerDao = new LaborerDaoImpl();
	LaborerService laborerService = new LaborerServiceImpl(laborerDao);
	LaborerIo laborerIo = new LaborerIo(laborerService);
%>

<%= laborerIo.play() %>
