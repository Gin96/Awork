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
    
    <title>个人评论箱</title>
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
	<!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
	<!-- jQuery and Modernizr-->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/modernizr.custom.97074.js"></script>
  </head>
  
  <body>
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
           <div style="height: 80px"></div>
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
           	</div>
        </div>
        <!-- /.container-fluid -->
    </nav>
	<!-- Navigation -->
  	<!-- 历史评论界面  -->
  	<div style="margin-top: 200px;">
  		<p style="color: red;font-size: 18px;" align="center">
  		<c:if test="${delgp!=null }">
  			${delgp }
  		</c:if>
	  	</p>
	    <table align="center" style="font-size: 20px;">
	    	<tr style="font-size: 28px;">
	    		<td>历史评论</td>
	   			<td>发表时间</td>
	   			<td></td>
	   			<td></td>
	    	</tr>
	    	<c:forEach var="v" items="${uping}">
	    		<tr>
		    		<td>${v.content }</td>
		   			<td>${v.pingdate }</td>
		   			<td><a href="#"><input type="button" value="修改"/></a></td>
		   			<td><a href="UsergpdelServlet?id=${v.id }"><input type="button" value="删除"/></a></td>
	    		</tr>
	    	</c:forEach>
	    </table>
  	</div>
  </body>
</html>
