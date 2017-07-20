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
    
    <title>管理登录</title>
    <style type="text/css">
    	/* h1{/*给文本本身添加内阴影， -weikit-是厂商前缀 五个值分别为 inset关键字，x-offset水平，y-offset(垂直)，blur-radius(模糊半径)
    	前面完成加逗号，再对每种属性使用不同的值，可以添加多重阴影  */
    	-webkit-box-shadow:inset 0px 0px 10px blue;
    	box-shadow:inset 0px 0px 10px blue;
    	font-size:50px;
    	text-align:center;
    	font-family: "微软雅黑";
    	} */
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
  
  <body style="background: url('images/cloud.jpg');">
  		<table>
  			<tr>
  				<td></td>
  			</tr>
  		</table>
    	<!-- <h1>管理员登录</h1> -->
		<div> 
			<!--登录界面-->				
			<form id="login" action="AdLoginServlet" method="post" style="margin-top: 240px;">
				<table cellpadding="10" cellspacing="1" style="height: 294px; width:444px; " align="center">
					<tr>
						<td colspan="2" align="center">
							<h1>管理员登录</h1>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center" style="color: red;">
							<c:if test="${error!=null }">
								${error}
							</c:if>
						</td>
					</tr>
					<tr>
						<td style="width: 150px; height: 38px"><h3>用户名</h3></td>
						<td style="width: 342px; "><h6><input type="text" id="un" name="aname"  placeholder="请输入管理员用户名" style="width: 239px; height: 41px"/></h6></td>
					</tr>
					<tr>
						<td style="width: 150px; height: 38px"><h3>密&emsp;码</h3></td>
						<td><h6><input type="password" id="up" name="apass"  placeholder="请输入管理员密码" style="width: 239px; height: 41px"/></h6></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="登录" style="height: 46px; width: 86px; "/>
							<input type="reset" value="重置" style="height: 46px; width: 86px; "/>
						</td>
					</tr>
				</table>
			</form>
		</div>
  </body>
</html>
