<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,dao.*,bean.*,java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>您要查询的站点ID是<p>
<%= request.getParameter("ID")%>

<p>您要查询的起始时间是<p>
<%= request.getParameter("Start")%>

<p>您要查询的终止时间是<p>
<%= request.getParameter("End")%>
<%Timestamp End = Timestamp.valueOf(request.getParameter("End")); %>
<p><%=End %><p>
</body>
</html>