<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   		<div style="margin-top: 200px;">
   			<table align="center">
   				<tr align="center">
   					<td colspan="5" style="color: red;font-size: 18px;">
   						<c:if test="${adelmp!=null }">
   							${adelmp }
   						</c:if>
   					</td>
   				</tr>
	   			<tr style="font-size: 28px;">
	   				<td>评论用户</td><td>评论内容</td><td>评论时间</td><td></td><td></td>
	   			</tr>
	   			<c:forEach var="v" items="${p.list }">
	   				<tr style="font-size: 20px;">
	   					<td>${v.name }</td>
	   					<td>${v.content }</td>
	   					<td>${v.pingdate}</td>
	   					<td><a><input type="button" value="回复"/></a></td>
	   					<td><a href="AdMeiPdelServlet?id=${v.id }"><input type="button" value="删除"/></a></td>
	   				</tr>
	   			</c:forEach>
	   			<tr><td colspan="5" align="center">----- 当前页为第${p.currentPage } -----</td></tr>
	   			<tr>
		   			<td colspan="5" align="center">
		   				<a href="AdPingServlet?currentPage=1"><input type="button" value="首页"/></a>
		   				<a href="AdPingServlet?currentPage=${p.lastPage }"><input type="button" value="上一页"/></a>
		   				<c:forEach var="v" begin="1" end="${p.pageTotal }">
		   					<a href="AdPingServlet?currentPage=${v }"><input type="button" value="${v }"/></a>
		   				</c:forEach>
		   				<a href="AdPingServlet?currentPage=${p.nextPage }"><input type="button" value="下一页"/></a>
		   				<a href="AdPingServlet?currentPage=${p.pageTotal }"><input type="button" value="尾页"/></a>
		   			</td>
	   			</tr>
   			</table>
   		</div>
  </body>
</html>
