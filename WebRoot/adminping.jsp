<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理评论箱</title>
    <style type="text/css">
    	a{
    		text-decoration: none;
    	}
    </style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table align="center" style="margin-top: 200px;font-size: 28px;">
    	<tr>
    		<td style="font-size: 32px;">您想查看哪一篇美文的评论？单机查看按钮</td>
    	</tr>
    	<c:forEach var="v" items="${mlist }">
    		<tr>
    			<td>${v.ming }</td>
    			<td><a href="AdPingServlet?id=${v.id }"><input type="button" value="查看"/></a></td>
    		</tr>
    	</c:forEach>
    </table>
  </body>
</html>
