<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
	
    <title>天涯海角</title>
	
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
	<!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body class="index-page">
			
	
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
        <!-- /.container-fluid -->
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
    </nav>
    <script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->

	<script src="js/classie.js"></script>
	<script src="js/cbpAnimatedHeader.js"></script>
	
	<!-- Countdown -->
    <script src="js/jquery.mb-comingsoon.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#myCounter').mbComingsoon({ expiryDate: new Date(2016, 0, 1, 9, 30), speed:100 });
            setTimeout(function () {
                $(window).resize();
            }, 200);
            
            $("#hui").click(function(){
            	$("#huif").css("display","block");
            });
            
            $("#qu").click(function(){
            	$("#huif").css("display","none");
            });
        });
    </script>
	
	<!-- Img Hover -->
	<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
	<script type="text/javascript">
		$(function() {
		
			$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

		});
	</script>	
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="images/b3.jpg" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <div class="logo">
								<a href="#">
									<div class="name t-right">Jason <span> 缘 定 </span></div><div class="and">&amp;</div><div class="name t-left"> Sophie <span>胜天 </span></div>
								</a>
							</div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="images/b4.jpg" alt="Second slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                             <div class="logo">
								<a href="#">
									<div class="name t-right">Jason <span> 天空  </span></div><div class="and">&amp;</div><div class="name t-left"> Sophie <span> 幻想</span></div>
								</a>
							</div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="images/b5.jpg" alt="Third slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <div class="logo">
								<a href="#">
									<div class="name t-right">Jason <span>勇气</span></div><div class="and">&amp;</div><div class="name t-left"> Sophie <span> 敢做</span></div>
								</a>
							</div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		<div align="center">
			<!-- 美文模块 -->
			<div style="font-size: 25px;">
				<h1 style="color: pink;">${mei.ming}</h1>
				<p>${mei.diyi }</p>
				<p>${mei.dier }</p>
				<p>${mei.disan }</p>
				<p>${mei.disi }</p>
				<p>${mei.diwu }</p>
				<p>${mei.diliu }</p>
				<p>${mei.diqi }</p>
				<p>${mei.diba }</p>
				<p>${mei.dijiu }</p>
				<p>${mei.dishi }</p>
			</div>
			
			<!-- Contact Form -->
	        <div class="form">
	          <p style="color: red" align="center">
	          		<c:if test="${error!=null }">
	          			${error }
	          		</c:if>
	          		<c:if test="${success!=null }">
	          			${success }
	          		</c:if>
	          </p>
	          <form action="UserpingServlet" method="post">
	            <textarea name="content" placeholder="快来一起吐槽吧" style="width: 1264px; font-size: 28px;">
	            </textarea>
	            <button name="submit" type="submit">发表评论</button>
	          </form>
	        </div>
	        <!-- Contact Form Ends! -->
	        <div align="left" style="font-size: 14px;margin-left: 450px;"><!--评论区-->
				<h3 style="color: pink;">评论专区</h3>
				<table>
					<c:forEach var="v" items="${ping.list }">
						<tr>
							<td colspan="1">
								<p>用户<a href="UsergServlet?id=${v.uid }" ><span style="font-size: 20px;">${v.name}</span></a>发表评论：</p>
							</td>
						</tr>
						<tr>
							<td>
								<p style="font-size: 20px;">&emsp;&emsp;&emsp;${v.content }</p>
							</td>
							<td>
								<input type="button" value="回复" id="hui"/>
								<c:if test="${user!=null }">
									<c:if test="${v.uid==user.id }">
										<a href="UserpdelServlet?id=${v.id }"><input type="button" value="删除" /></a>
									</c:if>									
								</c:if>
								<div style="display: none;" id="huif">
									<form action="" method="post">
										<table>
											<tr>
												<td>
													<textarea rows="5" cols="50">
													</textarea>
												</td>
												<td>
													<input type="submit" value="提交"/>
													<input type="button" value="取消" id="qu"/>
												</td>
											</tr>
										</table>
									</form>
								</div>
							</td>
						</tr>
						
						<tr>
							<td align="right" colspan="2">${v.pingdate }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="2" align="center">
							-----当前页为第${ping.currentPage}页-----
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<a href="HaiJiaoServlet?currentPage=1"><input type="button" value="首页"/></a>
							<a href="HaiJiaoServlet?currentPage=${ping.lastPage}"><input type="button" value="上一页"/></a>
							<c:forEach var="v" begin="1" end="${ping.pageTotal }">
								<a href="HaiJiaoServlet?currentPage=${v }"><input type="button" value="${v }"/></a>
							</c:forEach>
							<a href="HaiJiaoServlet?currentPage=${ping.nextPage }"><input type="button" value="下一页"/></a>
							<a href="HaiJiaoServlet?currentPage=${ping.pageTotal }"><input type="button" value="尾页"/></a>
						</td>
					</tr>
				</table>
			</div>
		</div>
</body>
</html>
