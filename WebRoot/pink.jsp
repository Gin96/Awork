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
	<style type="text/css">
	ul li div {
	display:none;
	text-align:center;}
	 a:hover div {
	display:block;}

	</style>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script>
		$(function(){
			$("#imga").click(function(){
				$("#aaa").css("display","block");
			});
			
			$("#imgb").click(function(){
				$("#aaa").css("display","none");
			});
		})
		</script>
		<script>
		$(function(){
			$("#imga1").click(function(){
				$("#aaa1").css("display","block");
			});
			
			$("#imgb1").click(function(){
				$("#aaa1").css("display","none");
			});
		})
		</script>
		<script>
		$(function(){
			$("#imga2").click(function(){
				$("#aaa2").css("display","block");
			});
			
			$("#imgb2").click(function(){
				$("#aaa2").css("display","none");
			});
		})
		</script>
    <title>窈窕淑女</title>
	
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
				<meta name="Keywords" content="">
				<meta name="Description" content="">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				
				<link href="style.css" rel="stylesheet" type="text/css">
				<link href="scripts/flexslider/flexslider.css" rel="stylesheet" type="text/css">
				
				<script src="scripts/jquery-1.11.0.min.js"></script>
				<script src="scripts/flexslider/jquery.flexslider-min.js"></script>
				<script src="scripts/imagelightbox.min.js"></script>
				<script src="scripts/functions.js"></script>
				<script src="scripts/form.js"></script>
				<script src="scripts/scroll.js"></script>
				    
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
                     <li>
                        <a class="page-scroll" href="single.jsp" style="font-size:18px">海枯石烂</a>
                    </li>
                    <li class="active">
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
				<div class="name t-right">Jason <span> Satrovsky  </span></div><div class="and"></div><div class="name t-left"> Sophie <span> Angela</span></div>
			</a>
		</div>
	</header>
	
	<!-- Header -->
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content">
		<div class="container">
			
		</div>
	</div>

    <!-- Core JavaScript Files -->
   	 
    <script src="js/bootstrap.min.js"></script>
	
	<!-- Custom Theme JavaScript -->
	<script src="js/agency.js"></script>

	<!-- Plugin JavaScript -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/cbpAnimatedHeader.js"></script>
	<script src="js/jquery-2.1.1.js"></script>
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
		
	<div class="main">

  <!-- Header -->
  <div class="header" id="header">
   

      <!-- Menu -->
       <div class="menu">

        <div class="menu_container">
          <ul class="items">
            <li><a href="#about" title="about us">about us</a></li>
            <li><a href="#services" title="our services">our services</a></li>
            <li><a href="#portfolio" title="portfolio">portfolio</a></li>
            <li><a href="#contact" title="contact us">contact us</a></li>
          </ul>

          <!-- Social Links -->
          <ul class="social">
            <li><a href="" class="google">google+</a></li>
            <li><a href="" class="linkedin">linkedin</a></li>
            <li><a href="" class="twitter">twitter</a></li>
            <li><a href="" class="facebook">facebook</a></li>
            <li><a href="" class="pinterest">pinterest</a></li>
            <li><a href="" class="instagram">instagram</a></li>
          </ul>
          <!-- Social Links Ends! -->
        </div>

      </div>
       <!-- Menu Ends -->
    </div>
  </div>
  
  
  
  
  
  
  
  
  <!-- Header Ends! -->

  <!-- Page Content -->
  <div class="page">
    <div class="container">

      <!-- Slider -->
      <div class="promo">

        <div class="flexslider">
          <ul class="slides">
            <li><a href="#"><img src="images/a18.jpg" alt="" />
             <div><p>个人介绍
            <br/>姓&emsp;名：*  * *  *<br>
            	年&emsp;龄：&emsp;&emsp;&emsp;&emsp;<br>
            	手机号：*  * *  *<br>
            	Q&emsp;Q：*  * *  *<br>
            	介绍自己:萝卜白菜各有所爱
            	<br>
            </p></div></a></li>
            
            
            <li><a href="#"><img src="images/a15.jpg" alt="" style="height: 336px; width: 533px; "/>
              <div><p>个人介绍
            <br/>姓&emsp;名：*  * *  *<br>
            	年&emsp;龄：&emsp;&emsp;&emsp;&emsp;<br>
            	手机号：*  * *  *<br>
            	Q&emsp;Q：*  * *  *<br>
            	介绍自己:萝卜白菜各有所爱
            	<br>
            </p></div></a></li>
           
            
            
            
            <li><a href="#"><img src="images/a.jpg" alt="" /> <div><p>个人介绍
            <br/>姓&emsp;名：*  * *  *<br>
            	年&emsp;龄：&emsp;&emsp;&emsp;&emsp;<br>
            	手机号：*  * *  *<br>
            	Q&emsp;Q：*  * *  *<br>
            	介绍自己:萝卜白菜各有所爱
            	<br>
            </p></div></a></li>
          </ul>
        </div>

      </div>
      <!-- Slider Ends! -->

      <!-- Abstract -->
      <div class="abstract">
        <a class="anchor" id="about"></a>
        <p>人生短短几十年，不要给自己留下了什么遗憾，想笑就笑，想哭就哭，该爱的时候就去爱，无所谓压抑自己，人生的苦闷有二，一是欲望没有被满足，二是它得到了满足。<br><em>其实我一直在你身边守侯，等你靠在我肩上诉说，会不会有那么一天，你的温柔都属于我，我不会再让你难过，让你的泪再流！</em></p>
      </div>
      <!-- Abstract Ends! -->

      <!-- Featured Products -->
      <div class="products">

        <!-- Product -->
        <div class="product">
          <div>
            <img src="images/a2.jpg" alt="thumbnail-a2.jpg">
            <a href="images/a2.jpg"></a>
          </div>
          	<div id="aaa" style="display: none;border: 1px solid; width: 200px; height: 100px;">交友宣言：<br>你会是冬天给我第一束温暖的光吗？</div>
          	<input type="button" value="你想看我的交友宣言吗？" id="imga"/>
			<input type="button" value="我不看了" id="imgb"/>
          <h3>爱，原来是没有名字的，在相遇之前等待的，就是它的名字。</h3>
          <p>一场烟雨，一场相思，记忆中的你，只是魂魄，你的躯体依然在古代的南国小镇，假如剪一段雨中的故事能与你相遇，那么她宁愿剪下这段苦涩的相思雨花。</p>
        </div>
        <!-- Product Ends! -->

        <!-- Product -->
        <div class="product">
          <div>
            <img src="images/a20.jpg" alt="thumbnail-a20.jpg">
            <a href="images/a20.jpg"></a>
          </div>
          	<div id="aaa1" style="display: none;border: 1px solid; width: 200px; height: 100px;">交友宣言：<br>你愿意当我一生的肩膀吗？约吗？？</div>
          	<input type="button" value="你想看我的交友宣言吗？" id="imga1"/>
			<input type="button" value="我不看了" id="imgb1"/>
          <h3>我曾路过你的心，不是我不想停留，而是你不肯收留。</h3>
          <p>爱情不是奇遇，可是当我们在这样的奇遇中有了爱情，却早已注定了分离。适合走到最后的人，从一开始就是为了彼此而生的。我相信这一点，相信冥冥中注定的相遇和分离。有心的人，再远也会记挂对方；无心的人，近在咫尺却远在天涯。</p>
        </div>
        <!-- Product Ends! -->

        <!-- Product -->
        <div class="product">
          <div>
            <img src="images/a22.jpg" alt="thumbnail-a22.jpg">
            <a href="images/a22.jpg"></a>
          </div>
          <div id="aaa2" style="display: none;border: 1px solid; width: 200px; height: 100px;">交友宣言：<br>那一天，那一分，那一秒，....期待和你相聚</div>
          	<input type="button" value="你想看我的交友宣言吗？" id="imga2"/>
			<input type="button" value="我不看了" id="imgb2"/>
          <h3>你是我猜不到的不知所措，我是你想不到的无关痛痒。</h3>
          <p>我一直想要和你一起走上那条美丽的山路有柔风有白云有你在我身旁倾听我快乐和感激的心我的要求其实很微小只要有过那样的一个夏日只要走过...</p>
        </div>
        <!-- Product Ends! -->

      </div>
      <!-- Featured Products Ends! -->

      <!-- Services -->
      <div class="services">
        <a class="anchor" id="services"></a>

        <h2>Our Services</h2>
        <p class="description">在年轻的时候，如果你爱上了一个人，请你，请你一定要温柔地对待他。不管你们相爱的时间有多长或多短，若你们能始终温柔地相待，那么，所有的时刻都将是一种无瑕的...</p>

        <div class="service">
          <h3>数字大集结</h3>
          <p>爱一个人或许痛，或许高兴，或许悲伤 ，不过一切都靠自己！！！</p>
        </div>

        <div class="event">
          <h3>为了梦，拼吧！！！</h3>
          <ul>
            <li><a href="">花落之泪</a></li>
            <li><a href="">要傻就傻到底</a></li>
            <li><a href="">宁可骗自己，</a></li>
            <li><a href="">不去骗你</a></li>
            <li><a href="">心碎</a></li>
          </ul>
        </div>

        <div class="delivery">
          <h3>简爱</h3>
          <p>天天梦涵；.........你可知道吗？</p>
        </div>
      </div>
      <!-- Services Ends! -->

      <!-- Portfolio -->
      <div class="portfolio">
        <a class="anchor" id="portfolio"></a>

        <h2>Our Portfolio</h2>

        <!-- Birthdays -->
        <div class="items levels" data-group="birthdays">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a23.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a23.jpg"></a>
          </div>

          <div>
            <img src="images/a24.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a24.jpg"></a>
          </div>

        </div>
        <!-- Birthdays Ends! -->

        <!-- Weddings -->
        <div class="items levels" data-group="weddings">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a25.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a25.jpg"></a>
          </div>

        </div>
        <!-- Weddings Ends! -->

        <!-- Showers -->
        <div class="items levels" data-group="showers">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a27.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a27.jpg"></a>
          </div>

        </div>
        <!-- Showers Ends! -->

        <!-- Parties -->
        <div class="items levels" data-group="parties">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a26.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a26.jpg"></a>
          </div>

        </div>
        <!-- Parties Ends! -->

        <!-- Corporate -->
        <div class="items levels" data-group="corporate">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a28.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a28.jpg"></a>
          </div>

        </div>
        <!-- Corporate Ends! -->

        <!-- Celebrations -->
        <div class="items levels" data-group="celebrations">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a3.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a3.jpg"></a>
          </div>

        </div>
        <!-- Celebrations Ends! -->

        <!-- Portfolio List -->
        <div class="item">
          <img src="images/a4.jpg" alt="-temp-placeholder-thumb"  style="width: 339px; height: 236px">
          <a href="" data-group="birthdays"><span>Birthdays</span></a>
        </div>

        <div class="item">
          <img src="images/a5.jpg" alt="-temp-placeholder-thumb" style="width: 339px; height: 236px">
          <a href="" data-group="weddings"><span>Weddings</span></a>
        </div>

        <div class="item">
          <img src="images/e.jpg" alt="-temp-placeholder-thumb" style="width: 339px; height: 236px">
          <a href="" data-group="showers"><span>Baby<br>Showers</span></a>
        </div>

        <div class="item">
          <img src="images/d.jpg" alt="-temp-placeholder-thumb" style="width: 339px; height: 236px">
          <a href="" data-group="parties"><span>VIP<br>Parties</span></a>
        </div>

        <div class="item">
          <img src="images/a31.jpg" alt="-temp-placeholder-thumb"  style="width: 339px; height: 236px">
          <a href="" data-group="corporate "><span>Corporate<br>Events</span></a>
        </div>

        <div class="item">
          <img src="images/a32.jpg" alt="-temp-placeholder-thumb"  style="width: 339px; height: 236px">
          <a href="" data-group="celebrations"><span>Celebrations</span></a>
        </div>
        <!-- Portfolio List Ends! -->

      </div>
      <!-- Portfolio Ends! -->

      <!-- Team -->
      <div class="team">
        <h2>Meet the team</h2>

        <!-- Member -->
        <div>
          <img src="images/a33.jpg" alt="team-member-name1">
          <h3>Jane Smith</h3>
          <p><em>Favorite dessert <span>chocolate cupcake</span></em></p>
          <p><strong>sweet chef</strong></p>
          <ul>
            <li><a href="" class="google">google+</a></li>
            <li><a href="" class="linkedin">linkedin</a></li>
            <li><a href="" class="twitter">twitter</a></li>
            <li><a href="" class="facebook">facebook</a></li>
          </ul>
        </div>
        <!-- Member Ends! -->

        <!-- Member -->
        <div>
          <img src="images/a4.jpg" alt="team-member-name2">
          <h3>Jackson Williams</h3>
          <p><em>Favorite dessert <span>anything chocolate</span></em></p>
          <p><strong>delicious chef</strong></p>
          <ul>
            <li><a href="" class="google">google+</a></li>
            <li><a href="" class="linkedin">linkedin</a></li>
            <li><a href="" class="twitter">twitter</a></li>
            <li><a href="" class="facebook">facebook</a></li>
            <li><a href="" class="pinterest">pinterest</a></li>
            <li><a href="" class="instagram">instagram</a></li>
          </ul>
        </div>
        <!-- Member Ends! -->

        <!-- Member -->
        <div>
          <img src="images/a34.jpg" alt="team-member-name3">
          <h3>Jane Doe</h3>
          <p><em>Favorite dessert <span>chocolate cookies</span></em></p>
          <p><strong>food stylist</strong></p>
          <ul>
            <li><a href="" class="google">google+</a></li>
            <li><a href="" class="linkedin">linkedin</a></li>
            <li><a href="" class="twitter">twitter</a></li>
            <li><a href="" class="facebook">facebook</a></li>
            <li><a href="" class="instagram">instagram</a></li>
          </ul>
        </div>
        <!-- Member Ends! -->

        <!-- Member -->
        <div>
          <img src="images/a33.jpg" alt="team-member-name4">
          <h3>Mary Brown</h3>
          <p><em>Favorite dessert <span>macarons</span></em></p>
          <p><strong>CEO</strong></p>
          <ul>
            <li><a href="" class="google">google+</a></li>
            <li><a href="" class="linkedin">linkedin</a></li>
            <li><a href="" class="twitter">twitter</a></li>
            <li><a href="" class="facebook">facebook</a></li>
          </ul>
        </div>
        <!-- Member Ends! -->

      </div>
      <!-- Team Ends! -->

      <!-- Map -->
      <div class="map">
        

        
      </div>
      <!-- Map Ends! -->

      <!-- Contact -->
      
      <!-- Contact Ends! -->

    </div>
  </div>
  <!-- Page Ends! -->

  <!-- Footer -->
  <div class="footer">
    <div class="container">
      <p>2016 &copy;—12—15<a href="index.html">颜值榜结束☠</a></p>
    </div>
  </div>
  <!-- Footer Ends! -->

</div>
	
	
</body>

</html>
