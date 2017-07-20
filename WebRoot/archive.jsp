<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
	
    <title>一往情深</title>
	
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

	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="sub-page">


	
	<!-- /////////////////////////////////////////Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top" >
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
                    <li>
                        <a class="page-scroll" href="index.jsp" style="font-size:18px">一见钟情</a>
                    </li>
                    <li class="active">
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
	
	<header>
		<div class="logo" class="hidden-xs">
			<a href="#">
				<div class="name t-right">Jason <span> Satrovsky  </span></div><div class="and">&amp;</div><div class="name t-left"> Sophie <span> Angela</span></div>
			</a>
		</div>
	</header>
	<!-- Header -->
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content">
		<div class="container">
			<div class="row">
				<div id="main-content" class="col-md-8">
					<article>
						<div class="art-header">
							<a href="#"><h2>一个人一生爱的终归只有两个人：一个是自己，一个是自己幻想出来的。</h2></a>
							<div class="info">By <a href="#">Admin</a> June 12, 2015 - 0 Comments</div>
						</div>
						<div class="art-content">
							<img src="images/a8.jpg" style="height: 316px; width: 686px; "/>
							<p>、敢说，我就敢做；你敢跑，我就敢追；你敢嫁，我就敢娶；你敢当娘，我就敢做爹；你敢花钱，我就敢挣钱；你敢当红太狼，我就敢当灰太狼；你敢说对不起，我就敢说没关系；你敢死心踏地，我就敢不离不弃；你敢不争不吵，我就敢白头偕老；你敢说我是你的一切，我就敢说你是我的世界。</p>
							<button type="submit" class="btn btn-skin f-right">More</button>
						</div>
					</article>
					<article>
						<div class="art-header">
							<a href="#"><h2>爱火，还是不应该重燃的。重燃了，从前那些美丽的回忆也会化为乌有。</h2></a>
							<div class="info">By <a href="#">Admin</a> June 12, 2015 - 0 Comments</div>
						</div>
						<div class="art-content">
							<img src="images/a11.jpg" style="height: 395px; width: 411px; "/>
							<p>爱情是飘着的云，总是飘浮不定，来去自由，变幻莫测，一会将天空装扮得绚丽多姿晴空万里，一会又乌云压城风雨满楼。天晴的时候，云很少，人们看到的是云的爽朗；天阴的时候，云却很多，人们看到的是云的暗淡。天上飘着的云总是很多，很灿烂也很美丽，令人眼花缭乱目不暇接，但真正属于你的却只有其中的一朵。但天空并不总是晴空灿烂，万里无云。当爱情的云彩开始改变自己颜色的时候，就是天气和心情出现变化的时候。是着凉感冒还是心旷神怡，就要看你是否能够理解和把握。一时的晴朗很精彩也很容易，难就难在一世的晴朗。要找到真正的爱情，永远留住爱情的颜色，就需要对天空的理解，对云彩的热爱，对乌云的包容。</p>
							<button type="submit" class="btn btn-skin f-right">More</button>
						</div>
					</article>
					<article>
						<div class="art-header">
							<a href="#"><h2>遇到一个人，爱情就从以前在天崖，而今咫尺。</h2></a>
							<div class="info">By <a href="#">Admin</a> June 12, 2015 - 0 Comments</div>
						</div>
						<div class="art-content">
							<img src="images/a12.jpg" style="height: 388px; width: 353px; "/>
							<p>别人拥有的，你不必羡慕，只要努力，你也会拥有；自己拥有的，你不必炫耀，因为别人也在奋斗，也会拥有。多一点快乐，少一点烦恼，不论富或穷，地位高或低，知识浅或深。每天开心笑，累了就睡觉，醒了就微笑。
							</p>
							<button type="submit" class="btn btn-skin f-right">More</button>
						</div>
					</article>
					<article>
						<div class="art-header">
							<a href="#"><h2></h2></a>
							<div class="info">By <a href="#">Admin</a> June 12, 2015 - 0 Comments</div>
						</div>
						<div class="art-content">
							<img src="images/a13.jpg" />
							<p>喜欢与你默默对视，喜欢在心的旷野里，与你缠绵相依。时光荏苒，无关风月，只是，愿意在你的注视下，轻执墨痕，为你写一段文字。一缕清风，一朵小花，一个微笑，一句轻声的问候，就够了。爱，无需刻意的装饰。 </p>
							<button type="submit" class="btn btn-skin f-right">More</button>
						</div>
					</article>
				</div>
				<div id="sidebar" class="col-md-4">
					<div class="widget wid-about">
						<div class="heading"><h4>一个人一生爱的终归只有两个人：一个是自己，一个是自己幻想出来的。</h4></div>
						<div class="content">
							<p>有一只小猴子，肚肚被树枝划伤了，流了很多血。它见到一个猴子朋友就扒开伤口说，你看我的伤口，好痛。每个看见它伤口的猴子都安慰它，同情它，告诉它不同的治疗方法它继续给朋友们看伤口。继续听取意见，后来它感染死掉了。一个老猴子说，它是因自己而死的。痛，说一次就复习一次。</p>
						</div>
					</div>
					<div class="widget wid-tags">
						<div class="heading"><h4>Tag</h4></div>
						<div class="content">
							<ul class="list-inline">
								<li><a href="#">animals</a></li>
								<li><a href="#">cooking</a></li>
								<li><a href="#">countries</a></li>
								<li><a href="#">home</a></li>
								<li><a href="#">likes</a></li>
								<li><a href="#">photo</a></li>
								<li><a href="#">travel</a></li>
								<li><a href="#">video</a></li>
							</ul>
						</div>
					</div>
					<div class="widget wid-archive">
						<div class="heading"><h4>Archive</h4></div>
						<div class="content">
							<select>
							    <option value="month" selected>Select Month</option>
								<option value="3">March 2015</option>
								<option value="2">Febuary 2015</option>
								<option value="1">January 2015</option>
							</select>
						</div>
					</div>
					<div class="widget wid-gallery">
						<div class="heading">人们有了爱情，掩饰不住;没有爱情，又装不出来。<h4></h4></div>
						<div class="content">
							<div class="row">
								<div class="col-xs-4">
									<a href="#"><img src="images/a14.jpg" ></a>
									<a href="#"><img src="images/a15.jpg" ></a>
									<a href="#"><img src="images/a16.jpg"></a>
								</div>
								<div class="col-xs-4">
									<a href="#"><img src="images/a17.jpg"></a>
									<a href="#"><img src="images/a18.jpg"></a>
									<a href="#"><img src="images/a19.jpg"></a>
								</div>
								<div class="col-xs-4">
									<a href="#"><img src="images/a20.jpg"></a>
									<a href="#"><img src="images/9.jpg"></a>
									<a href="#"><img src="images/a21.png"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="widget wid-links">
						<div class="heading"><h4>我曾路过你的心，不是我不想停留，而是你不肯收留。</h4></div>
						<div class="content">
							<ul>
								<li><a href="#">> Lorem ipsum dolor sit </a></li>
								<li><a href="#">> Nullam venenatis lacus a </a></li>
								<li><a href="#">> Morbi ut sapien nec nisl</a></li>
								<li><a href="#">> Integer a enim ac ex.</a></li>
								<li><a href="#">> Sed in nunc non eleifend  </a></li>
							</ul>
						</div>
					</div>
						
				</div>
			</div>
		</div>
	</div>
	
	<footer>
		<div class="wrap-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="copyright">爱情的宣言：一生一世只为你.....<a target="_blank" href="http://www.cssmoban.com/">———花落</a></div>
					</div>
					<div class="col-md-4">
						<ul class="list-inline social-buttons">
							<li><a href="#"><i class="fa fa-twitter"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-facebook"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a>
							</li>
						</ul>
					</div>
					<div class="col-md-4">
						<ul class="list-inline quicklinks">
							<li><a href="#">你错了，也过分了，所以你错过了。</a>
							</li><br/>
							<li><a href="#">晚安的意思其实是我爱你。</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

    <!-- Core JavaScript Files -->
   	 
    <script src="js/bootstrap.min.js"></script>
	
	<!-- Custom Theme JavaScript -->
	<script src="js/agency.js"></script>

	<!-- Plugin JavaScript -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
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
        });
    </script>
	
	<!-- Img Hover -->
	<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
	<script type="text/javascript">
		$(function() {
			$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );
		});
	</script>
		
		
</body>

</html>
