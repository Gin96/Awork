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
    
    <title>管理意见箱</title>
    <style type="text/css">
    	a{
    		text-decoration: none;
    	};
    </style>
  </head>
  
  <body>
    	<table align="center" style="height: 358px; width: 1400px; margin-top: 200px;font-size: 20px;">
    		<tr>
    			<td colspan="6" align="right">
    				<a href="JianYiXServlet"><input type="button" value="升序" name="yijians"/></a>
    				<a href="JianYiXJServlet"><input type="button" value="降序" name="yijianj"/></a>
    			</td>
    		</tr>
    		<tr>
    			<td>序列ID</td><td>用户ID</td><td>用户名字</td><td>用户邮箱</td><td>用户意见</td><td>时间</td>
    		</tr>
    		<c:forEach var="v" items="${page.list }">
    			<tr>
    				<td height="10px;" width="80px;">${v.id}</td>
    				<td height="10px;" width="80px;">${v.uid}</td>
    				<td height="10px;" width="80px;">${v.zhenname}</td>
    				<td height="10px;" width="80px;">${v.email}</td>
    				<td height="30px;" width="700px;">${v.message}</td>
    				<td>${v.yidate}</td>
    			</tr>
    		</c:forEach>
    		<tr>
    			<td colspan="6" style="height: 30px;"></td>
    		</tr>
    		<tr>
    			<td colspan="6" align="center">
    				-----当前页为第${page.currentPage }页-----
    			</td>
    		</tr>
    		<tr>
    			<td colspan="6" align="center">
    				<a href="JianYiXJServlet?currentPage=1"><input type="button" value="首页"/></a>
			    	<a href="JianYiXJServlet?currentPage=${page.lastPage }"><input type="button" value="上一页"/></a>
			    	<c:forEach var="v" begin="1" end="${page.pageTotal}">
			    		<a href="JianYiXJServlet?currentPage=${v }"><input type="button" value="${v }"/></a>
			    	</c:forEach>
			    	<a href="JianYiXJServlet?currentPage=${page.nextPage }"><input type="button" value="下一页"/></a>
			    	<a href="JianYiXJServlet?currentPage=${page.pageTotal}"><input type="button" value="尾页"/></a>
    			</td>
    		</tr>
    	</table>
    	
  </body>
</html>