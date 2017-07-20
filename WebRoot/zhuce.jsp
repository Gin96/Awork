<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>注册</title>
	    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!-- Custom CSS -->
	    <link href="css/style.css" rel="stylesheet">
		<!-- jQuery and Modernizr-->
		<script src="js/jquery-2.1.1.js"></script>
		<script src="js/modernizr.custom.97074.js"></script>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/messages_zh.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function(){
				//判断手机号
				jQuery.validator.addMethod("isMobile", function(value, element) {  
				    var length = value.length;  
				    var regPhone = /^1([3578]\d|4[57])\d{8}$/;  
				    return this.optional(element) || ( length == 11 && regPhone.test( value ) );    
				}, "<font color='red'>请正确填写您的手机号码");

				//注册界面的判断
				$("#register").validate({
					rules:{//校验规则
						uname:{//校验属性id
							required:true,//必填
							minlength:7,//最小长度
							maxlength:21//最大长度
							//另一种写法 		rangelength[7,21]最低7位，最高21位
						},
						upass:{
							required:true,//必填
							minlength:7,//最小长度
							maxlength:21//最大长度
						},
						cupass:{
							equalTo:"#upass"//和id为upass的相等
						},
						email:{
							email:true
						},
						phone:{
							required:true,
							isMobile:true
						}
					},
					messages:{
						uname:{
							required:"<font color='red'>用户名不能为空",
							minlength:"<font color='red'>用户名最低7位",
							maxlength:"<font color='red'>用户名最高21位"
						},
						upass:{
							required:"<font color='red'>密码不能为空",
							minlength:"<font color='red'>密码最低7位",
							maxlength:"<font color='red'>密码最高21位"
						},
						cupass:{
							equalTo:"<font color='red'>两次密码输入不一致"
						}
					},
					errorPlacement:function (error,element){
						//alert(error);
						error.appendTo(element.parent())
					}
				});
			});
		</script>
	</head>
	<body background="images/loginbg1.jpg">
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
		<div align="center" style="padding-top: 200px;">
			<!--头像-->
			<div>
				<img src="images/avtar.png" />
			</div>
		</div>
		<div align="center">
			<!-- 注册界面 -->
			<form id="register" action="RegisterServlet" method="post">
				<table  cellpadding="10" cellspacing="1" style="height: 496px; width: 385px; ">
					<tr>
						<td style="height: 48px; width: 224px; ">用户名</td>
						<td style="width: 302px; "><input type="text" id="uname" name="uname" placeholder="长度最低7位，最高21位"></td>
					</tr>
					<tr>
						<td style="height: 48px; width: 224px; ">密码</td>
						<td><input type="password" id="upass" name="upass" placeholder="长度最低7位，最高21位"></td>
					</tr>
					<tr>
						<td style="height: 48px; width: 224px; ">重复密码</td>
						<td><input type="password" id="cupass" name="cupass" placeholder="两次密码需要一致"></td>
					</tr>
					<tr>
						<td style="height: 48px; width: 224px; ">性别</td>
						<td>
							男<input type="radio" value="男" name="sex" checked="checked">
							女<input type="radio" value="女" name="sex">
						</td>
					</tr>
					<tr>
						<td style="height: 48px; width: 224px; ">Email</td>
						<td><input type="text" id="email" name="email" placeholder="请输入正确邮箱"></td>
					</tr>
					<tr>
						<td style="height: 48px; width: 224px; ">手机号</td>
						<td><input type="text" id="phone" name="phone" placeholder="请输入正确号码"></td>
					</tr>
					<tr>
						<td style="width: 111px; ">地址</td>
						<td><input type="text" name="address" placeholder="请输入您的地址"/></td>
					</tr>
					<tr>
						<td colspan="2">
							<p>
								自恋一下：
								<textarea style="height: 86px; width: 519px; " name="yan" placeholder="个性标签，交友宣言，写得好才能快速勾搭到朋友"></textarea>
							</p>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="注册" />
							<input type="reset" value="重置">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
