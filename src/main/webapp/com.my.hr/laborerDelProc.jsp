<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<a href='main.jsp'>메인</a>
<h3>추가</h3>
<form action='laborerOut.jsp' method='post'>
	이름: <input type='text' name='addLaborerName'/><br>
	입사일: <input type='date' name='addHireDate'/><br>
	<button type='submit'>추가</button>
</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>