<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理系统</title>
    <style type="text/css">
	    a{
	    	text-decoration: none;
	    }
    	h1{/*给文本本身添加内阴影， -weikit-是厂商前缀 五个值分别为 inset关键字，x-offset水平，y-offset(垂直)，blur-radius(模糊半径)
    	前面完成加逗号，再对每种属性使用不同的值，可以添加多重阴影  */
    	-webkit-box-shadow:inset 0px 0px 10px blue;
    	box-shadow:inset 0px 0px 10px blue;
    	font-size:50px;
    	text-align:center;
    	font-family: "微软雅黑";
    	}
    	.dingwei{
    		 position: fixed;
    		 top: 75px;
    		 right: 100px;
    		 border-left:1px solid;
    		 background-image: url("images/manage1.jpg");
    	}
    </style>
  </head>
  <body style="background-image: url('images/manage1.jpg');">
    	<h1>个人管理系统</h1>
    	<!-- background: url('images/adminbg1.jpg') ; -->
    	<table style="height: 300px;width: 230px;margin-top:240px;margin-left:100px;font-size: 25px; ">
    		<tr>
    			<td><a href="AdManageuServlet" target="manage">用户薄</a></td>
    		</tr>
    		<tr>
    			<td><a href="JianYiXServlet" target="manage">意见箱</a></td>
    		</tr>
    		<tr>
    			<td><a href="AdMeiPServlet" target="manage">评论箱</a></td>
    		</tr>
    		<tr>
    			<td><a href="AdMeiServlet" target="manage">爱情语</a></td>
    		</tr>
    	</table>
    	<iframe class="dingwei" src="AdManageuServlet" name="manage" style="width: 1500px;height: 750px;"></iframe>
  </body>
</html>
