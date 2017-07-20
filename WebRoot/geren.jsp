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
    
    <title>个人中心</title>
    
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
	<!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/modernizr.custom.97074.js"></script>
  </head>
  <body style="font-size: 20px; background-image: url('images/gerenbg.jpg'); ">
  
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
           <div style="height: 50px"></div>
        </div>
        <!-- /.container-fluid -->
    </nav>
  		
   		<div style="padding-top: 250px" align="center">
   			<div>
   				<img src="images/avtar.png"/><br/>
   				<img src="images/yijianxiang.png" style="height: 32px; width: 44px; "/><a href="GeYijianServlet">意见箱</a>&emsp;&emsp;&emsp;<img src="images/pinglunx.png"/><a href="UserpServlet">评论箱</a><br/>
   				<p style="font-size: 30px">${user.name }</p>
   				<p style="font-size: 25px">${user.yan }</p>
   				<p style="color: red">
   					<c:if test="${error!=null}">
   						${error}
   					</c:if>
   				</p>
   			</div>
   			<div>
   				<table style="font-size: 25px">
   				<tr>
   					<td>性&emsp;别：</td>
   					<td>${user.sex }</td>
   				</tr>
   				<tr>
   					<td>&ensp;Email：</td>
   					<td>${user.email }</td>
   				</tr>
   				<tr>
   					<td>手机号：</td>
   					<td>${user.phone }</td>
   				</tr>
   				<tr>
   					<td>地&emsp;址：</td>
   					<td>${user.address}</td>
   				</tr>
   			</table>
   			</div>
   			<a href="xmima.jsp">修改密码</a>   <a href="xgeren.jsp">修改资料</a>
   		</div>
  </body>
</html>
