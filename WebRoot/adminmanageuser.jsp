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
    
    <title>管理用户</title>
    <style type="text/css">
    	a{
    		text-decoration: none;
    	}
    	td{
    		height: 40px;
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
  
  <body style="font-size: 18px;">
    <table  align="center" style="margin-top: 200px;font-size: 20px;">
    	<tr>
    		<td>用户ID</td><td>用户名字</td><td>用户密码</td><td>用户性别</td><td>用户邮箱</td><td>用户地址</td><td>个性签名</td>
    	</tr>
    	<c:forEach var="v" items="${userPage.list }">
    		<tr>
    			<td>${v.id}</td>
    			<td>${v.name}</td>
    			<td>${v.pass}</td>
    			<td>${v.sex}</td>
    			<td>${v.email}</td>
    			<td>${v.address}</td>
    			<td>${v.yan}</td>
    		</tr>
    	</c:forEach>
    	<tr>
    		<td colspan="7" align="center">
    			-----当前页为第${userPage.currentPage }页-----
    		</td>
    	</tr>
    	<tr>
    		<td colspan="7" align="center">
    			<a href="AdManageuServlet?currentPage=1"><input type="button" value="首页"/></a>
    			<a href="AdManageuServlet?currentPage=${userPage.lastPage }"><input type="button" value="上一页"/></a>
    			<c:forEach var="v" begin="1" end="${userPage.pageTotal }">
    				<a href="AdManageuServlet?currentPage=${v }"><input type="button" value="${v }"/></a>
    			</c:forEach>
    			<a href="AdManageuServlet?currentPage=${userPage.nextPage }"><input type="button" value="下一页"/></a>
    			<a href="AdManageuServlet?currentPage=${userPage.pageTotal}"><input type="button" value="尾页"/></a>
    		</td>
    	</tr>
    </table>
  </body>
</html>
