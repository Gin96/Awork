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
    
    <title>修改资料</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	
	<!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link rel="stylesheet" href="fonts/stylesheet.css">
	<link href="css/mb-comingsoon-iceberg.css" rel="stylesheet" />
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/modernizr.custom.97074.js"></script>
  </head>
  
  <body style="background-image: url('images/gerenbg2.jpg');">
  
  		<!-- /////////////////////////////////////////Navigation -->
	    <nav class="navbar navbar-default navbar-fixed-top">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header page-scroll">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
					<a class="navbar-brand page-scroll" href="#page-top">Your Wedding</a>
	            </div>
				
	            <!-- Collect the nav links, forms, and other content for toggling -->
	            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                <ul class="nav nav-justified ">
	                    <li class="hidden">
	                        <a href="#page-top"></a>
	                    </li>
	                    <li class="active">
	                        <a class="page-scroll" href="index.jsp" style="font-size:18px">一见钟情</a>
	                    </li>
	                    <li>
	                        <a class="page-scroll" href="archive.jsp" style="font-size:18px">一往情深</a>
	                    </li>
	                  
	                    <li>
	                        <a class="page-scroll" href="pink.jsp" style="font-size:18px">窈窕淑女</a>
	                    </li>
						<li>
	                        <a class="page-scroll" href="blue.jsp" style="font-size:18px">君子好逑</a>
	                    </li>
	                    <li>
	                        <a class="page-scroll" href="HaiJiaoServlet" style="font-size:18px">天涯海角</a>
	                    </li>
	                      <li>
	                        <a class="page-scroll" href="single.jsp" style="font-size:18px">海枯石烂</a>
	                    </li>
	                    <li>
	                        <a class="page-scroll" href="contact.jsp" style="font-size:18px">生生世世</a>
	                    </li>
	                    
	                </ul>
	            </div>
	            <!-- /.navbar-collapse -->
	         <%--   <div style="height: 50px"></div>
	           <div style="padding-left:850px" id="denglu">
		           		<c:if test="${user==null}">
		           			<a href="login.jsp"><img src="images/avtar.png"/></a>
		           			<a href="login.jsp"><span style="font-size: 25px">登录</span></a>
		           		</c:if>
		           		<c:if test="${user!=null }">
		           			<a href="geren.jsp"><img src="images/avtar.png"/></a>
		           			<a href="geren.jsp"><span style="font-size: 25px">个人中心</span></a>
		           			<span style="font-size: 25px">|</span>
		           			<a href="TuiServlet"><span style="font-size: 25px">退出</span></a>
		           		</c:if>
	           	</div> --%>
	        </div>
	        <!-- /.container-fluid -->
	    </nav>
    
   		<div style="padding-top: 250px;">
   			<form action="XgerenServlet" method="post">
   				<table align="center">
   					<tr style="color: red">
   						<td colspan="2">
   							<c:if test="${error!=null }">
   								${error }
   							</c:if>
   						</td>
   					</tr>
   					<tr>
   						<td colspan="2"><span style="font-size: 25px">${user.name }，您好</span></td>
   					</tr>
   					<tr>
   						<td><span style="font-size: 25px">性别</span></td>
   						<td>
   							<span style="font-size: 25px">
   							男<input type="radio" value="男" name="sex" checked="checked"/>
   							女<input type="radio" value="女" name="sex"/>
   							</span>
   						</td>
   					</tr>
   					<tr>
   						<td><span style="font-size: 25px">Email</span></td>
   						<td><span style="font-size: 25px"><input value="${user.email}" name="email"></span></td>
   					</tr>
   					<tr>
   						<td><span style="font-size: 25px">手机号</span></td>
   						<td><span style="font-size: 25px"><input value="${user.phone}" name="phone"></span></td>
   					</tr>
   					<tr>
   						<td colspan="2">
   							<p style="font-size: 25px">自恋一下
	   							<textarea name="yan">${user.yan }
	   							</textarea>
   							</p>
   						</td>
   					</tr>
   					<tr align="center">
   						<td colspan="2">
   							<span style="font-size: 25px">
	   						<input type="reset" value="重置"/>
	   						<input type="submit" value="修改"/>
	   						</span>
   						</td>
   					</tr>
   				</table>
   			</form>
   		</div>
  </body>
</html>
