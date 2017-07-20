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
    
    <title>修改密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link rel="stylesheet" href="fonts/stylesheet.css">
	<link href="css/mb-comingsoon-iceberg.css" rel="stylesheet" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function(){
				//提交按钮绑定询问框事件
				$("#bu").click(function(){
					var i=confirm("修改密码需要重新登录，确定吗？");
					if(i==false){
						return;
					}
					else{
						$("#form1").submit();
					}
				}); 
			});
			
				//随机验证码
			function reflushMsg(){
				//字符串包含的字符
				var s="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
				//保存验证结果
				var result="";
				//生成随机验证码
				for(var i=0;i<4;i++){
					var index=parseInt(Math.random()*62);
					result=result+s.charAt(index);
				}
				document.getElementById("msg").innerText=result;
			}
				
			//验证随机码
			function yanzh(t) {
				var ma=t.value;
				tt=document.getElementById("msg").innerText;
				if(ma!=tt){
					alert("验证码输入错误");
				}
			};
		</script>
  </head>
  
  <body style="background-image: url('images/ximimahead.jpg');color: #FF6600; ">
  	<nav class="navbar navbar-default navbar-fixed-top"   style="background-image: url('images/ximimahead.jpg'); ">
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
    	
  		<div align="center" style="padding-top: 400px;" >
  			<form action="XmimaServlet" method="post" id="form1">
  				<table>
  					<tr>
  						<td><span style="font-size: 25px">用户名</span></td>
			    		<td><span style="font-size: 25px"><input type="text" value="${user.name }" name="name"/></span></td>
			    	</tr>
			    	<tr>
			    		<td><span style="font-size: 25px">密&emsp;码</span></td>
			    		<td><span style="font-size: 25px"><input type="password" value="${user.pass }" name="pass"/></span></td>
			    	</tr>
			    	<tr>
			    		<td><span style="font-size: 25px">验证码</span></td>
			    		<td>
			    			<span style="font-size: 25px">
				    			<input type="text" style="width: 105px; " id="yanzheng" onchange="yanzh(this)"/>
							</span>
			    			<em><span id="msg" style="font-size: 25px; background-image: url('images/a5.jpg');">12fr</span></em>
							<input type="button" style="font-size: 20px;" value="刷新验证码" onclick="reflushMsg()" name="input"/>
			    		</td>
			    	</tr>
			    	<tr>
			    		<td colspan="2" align="center">
			    			<span style="font-size: 30px">
				    			<input type="reset"/>
				    			<input type="button" value="修改" id="bu"/>
			    			</span>
			    		</td>
			    	</tr>
		    	</table>
	    	</form>
    	</div>
  </body>
</html>
