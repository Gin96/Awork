<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
	
    <title>海枯石烂</title>
	
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
                    <li>
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
                     <li class="active">
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
							<div class="entry-title"> 
								<h2>情有一个极为突出的特点：人们有了爱情，掩饰不住;没有爱情，又装不出来。</h2>
							</div>
							<div class="info">By <a href="#">Danny</a> on April 14, 2015</div>
						</div>
						<div class="art-content">
							<img src="images/a10.jpg" style="height: 358px; width: 715px; "/>
							<div class="excerpt"><p>我一直想要和你一起走上那条美丽的山路有柔风有白云有你在我身旁倾听我快乐和感激的心我的要求其实很微小只要有过那样的一个夏日只要走过...</p></div>
							<p>谁在为谁无望的守候，谁又将谁抛之于脑后？谁在为谁执着的孤独，谁又将谁归位于虚无？心碎的尺子无法丈量相思的距离，微动的嘴角，点缀在我思念你心的夜空……
							</p>
							<blockquote><p>一场烟雨，一场相思，记忆中的你，只是魂魄，你的躯体依然在古代的南国小镇，假如剪一段雨中的故事能与你相遇，那么她宁愿剪下这段苦涩的相思雨花。
							</p></blockquote>
							<p>炊烟起了，我在门口等你。夕阳下了，我在山边等你。叶子黄了，我在树下等你。月儿弯了，我在十五等你。细雨来了，我在伞下等你。流水冻了，我在河畔等你。生命累了，我在天堂等你。我们老了，我在来生等你。
							</p>
							<h2>经典语录 1</h2>
							<p>也许，这一世，你注定是我宿命里无法逾越的情堑。我知道，今后，你会永远盘踞在我的内心深处，纵然爱你会寂寞了我的所有时光，我依然会守着回忆，在绿肥红瘦的季节里，在清欢浓愁的日子里，倾尽我一世的痴迷。</p>
							<h2>经典语录 2</h2>
							<p>、无数次追问自己，你有什么优点令我如此着迷，你有什么魅力，这么吸引着我？让我不能自拔，放手不能。千万次的问答换来一次次摇头。是啊，我也不知道，那就让我们保持这份心境吧！不要去捅破那层感情的窗纸，永远保持一份朦胧的美丽。</p>
							<h2>经典语录 3</h2>
							<p>尘世里并不是所有的缘分注定遇见后就别离，注定拥有后就失去。你毋须怀疑，你与我的缘分，是如沉香之木，忘川，也无法抹去其存在的痕迹。将你烙进我的灵魂，镌刻在我的心头，清晰地生根发芽，执拗地交错生根。等岁月老去时，浮起的就不是模糊的容颜。</p>
							<p>、爱情不合乎逻辑，或许这就是爱的逻辑。真正热爱的，或许并不是一个大家公认的最该爱，最值得爱，爱的最正确的人，而只是一个使我忘乎所以，无法不爱的人。爱不是因为被爱，只是因为爱。我不会因为没有被爱而失去爱，爱在爱的人心里，而不在被爱的人眼中。</p>
							<p>如果彼此出现早一点，也许就不会和另一个人十指紧扣。又或者相遇的再晚一点，晚到两个人在各自的爱情经历中慢慢地学会了包容与体谅善待和妥协，也许走到一起的时候，就不会那么轻易地放弃，任性地转身，放走了爱情。没有早一步也没有晚一步，那是太难得的缘份。</p>
							<div class="note">
							  <ol>
								<li>Lorem ipsum</li>
								<li>Sit amet vultatup nonumy</li>
								<li>Duista sed diam</li>
							  </ol>
							  <div class="clear"></div>
							</div>
							<p>所谓花心，就是有了爱情和面包，还想吃蛋糕的心情；所谓外遇，就是溜出围城，跌入陷阱；所谓浪漫，就是帮老婆买包心菜时，还会顺手带回一支玫瑰花；所谓厨房，就是结婚时红地毯通向的正前方……</p>
						</div>
					</article>
				</div>
				<div id="sidebar" class="col-md-4">
					<div class="widget wid-about">
						<div class="heading"><h4>About Us</h4></div>
						<div class="content">
							<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
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
						<div class="heading"><h4>Gallery</h4></div>
						<div class="content">
							<div class="row">
								<div class="col-xs-4">
									<a href="#"><img src="images/7.jpg"></a>
									<a href="#"><img src="images/8.jpg"></a>
									<a href="#"><img src="images/9.jpg"></a>
								</div>
								<div class="col-xs-4">
									<a href="#"><img src="images/6.jpg"></a>
									<a href="#"><img src="images/7.jpg"></a>
									<a href="#"><img src="images/8.jpg"></a>
								</div>
								<div class="col-xs-4">
									<a href="#"><img src="images/7.jpg"></a>
									<a href="#"><img src="images/9.jpg"></a>
									<a href="#"><img src="images/6.jpg"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="widget wid-links">
						<div class="heading"><h4>Categories</h4></div>
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
						<div class="copyright">Boss1组♚☜☝☞ ♔&copy;简爱<a target="_blank" href="http://www.cssmoban.com/">加油！！！</a></div>
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
							<li><a href="#">Privacy Policy</a>
							</li>
							<li><a href="#">Terms of Use</a>
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
