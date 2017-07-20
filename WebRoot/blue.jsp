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
		<script>
		$(function(){
			$("#imga3").click(function(){
				$("#aaa3").css("display","block");
			});
			
			$("#imgb3").click(function(){
				$("#aaa3").css("display","none");
			});
		})
		</script>
	
	
	
    <title>君子好逑</title>
	
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
	
	
	<footer>
		
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
            <li><a href="#"><img src="images/a34.png" alt="" /><div><p>个人介绍
            <br/>姓&emsp;名：宋亚浩<br>
            	年&emsp;龄：18&emsp;&emsp;&emsp;&emsp;<br>
            	手机号：13584***568<br>
            	Q&emsp;Q：1111111<br>
            	介绍自己:萝卜白菜各有所爱
            	<br>
            </p></div></a></li>
            <li><a href="#"><img src="images/a1.jpg" alt="" />
            <div><p>个人介绍
            <br/>姓&emsp;名：赵红庙<br>
            	年&emsp;龄：20&emsp;&emsp;&emsp;&emsp;<br>
            	手机号：150631***567<br>
            	Q&emsp;Q：222222222<br>
            	介绍自己:萝卜白菜各有所爱
            	<br>
            </p></div></a></li>
            
            <li><a href="#"><img src="images/a17.jpg" alt="" />
            <div><p>个人介绍
            <br/>姓&emsp;名：小明<br>
            	年&emsp;龄：19&emsp;&emsp;&emsp;&emsp;<br>
            	手机号：1346****510<br>
            	Q&emsp;Q：2777312822<br>
            	介绍自己:萝卜白菜各有所爱
            	<br>
            </p></div></a>
            </li>
          </ul>
        </div>

      </div>
      <!-- Slider Ends! -->

      <!-- Abstract -->
      <div class="abstract">
        <a class="anchor" id="about"></a>
        <p>冷酷的外表其实藏着一颗火热的心而外表鲜丽的模样一般都藏着一颗饱受伤害的心 -----花落& &emsp;&emsp;&emsp;&emsp;&emsp;加油！努力！<br><em>不是任何事都是绝对肯定的，而有些事你必须去尝试，否则你永远不知道结果。。。。</em></p>
      </div>
      <!-- Abstract Ends! -->

      <!-- Featured Products -->
      <div class="products">

        <!-- Product -->
        <div class="product">
          <div>
            <img src="images/a19.jpg" alt="thumbnail-a19.jpg">
            <a href="images/a19.jpg"></a>
          </div>
         
          	<div id="aaa" style="display: none;border: 1px solid; width: 200px; height: 100px;">交友宣言：<br>你会是冬天给我第一束温暖的光吗？</div>
          	<input type="button" value="你想看我的交友宣言吗？" id="imga"/>
			<input type="button" value="我不看了" id="imgb"/>
          <h3>魔&幻</h3>
          <p>相爱是种感觉，当这种感觉已经不在时，我知道还在勉强自己，这叫责任！分手是种勇气！当这种勇气已经不在时，我却还在鼓励自己，这叫悲壮！
          </p>
        </div>
        <!-- Product Ends! -->

        <!-- Product -->
        <div class="product">
          <div>
            <img src="images/a21.png" alt="thumbnail-a21.png">
            <a href="images/a21.png"></a>
          </div>
          <div id="aaa2" style="display: none;border: 1px solid; width: 200px; height: 100px;">交友宣言：<br>你会是冬天给我第一束温暖的光吗？</div>
          	<input type="button" value="你想看我的交友宣言吗？" id="imga2"/>
			<input type="button" value="我不看了" id="imgb2"/>
          <h3>着&迷</h3>
          <p>眼波如水，映出窗外繁星点点。迷离的星光，在淡淡的云烟中隐约闪现。空气中到处弥漫着你的气息。你，是我今生无法忘记的梦，无法诠释的情缘。</p>
        </div>
        <!-- Product Ends! -->

        <!-- Product -->
        <div class="product">
          <div>
            <img src="images/a34.png" alt="thumbnail-a34.png">
            <a href="images/a34.png"></a>
          </div>
          <div id="aaa1" style="display: none;border: 1px solid; width: 200px; height: 100px;">交友宣言：<br>你会是冬天给我第一束温暖的光吗？</div>
          	<input type="button" value="你想看我的交友宣言吗？" id="imga1"/>
			<input type="button" value="我不看了" id="imgb1"/>
          <h3>☜爱与恨☝一码事☞</h3>
          <p>对于未知的未来，我们没有把握，我总在思考应该如何去应付这草蛋生活，是我想得太多么，最近发生了一些荒唐事并且不知所云的陷在里边无法脱身。</p>
        </div>
        <!-- Product Ends! -->

      </div>
      <!-- Featured Products Ends! -->

      <!-- Services -->
      <div class="services">
        <a class="anchor" id="services"></a>

        <h2>ILove</h2>
        <p class="description">喜欢与你默默对视，喜欢在心的旷野里，与你缠绵相依。时光荏苒，无关风月，只是，愿意在你的注视下，轻执墨痕，为你写一段文字。一缕清风，一朵小花，一个微笑，一句轻声的问候，就够了。爱，无需刻意的装饰。</p>

        <div class="service">
          <h3>爱到分才显珍贵，很多人都不懂珍惜拥有</h3>
          <p>爱情就如一杯牛奶咖啡，香香地飘在外面，甜甜地浮在表面，酸酸地含在里面，苦苦地沉在底面，模模糊糊地把你倒映在咖啡里面。</p>
        </div>

        <div class="event">
          <h3>爱情像是邂逅一场盛景后，摆出美丽苍凉的手势。</h3>
          <ul>
            <li><a href="" ><h1>&emsp;&emsp;☜☝☞</h1></a></li>
          </ul>
        </div>

        <div class="delivery">
          <h3>眼波如水，映出窗外繁星点点&emsp;....</h3>
          <p>人生不止，寂寞不已。寂寞人生爱无休，寂寞是爱永远的主题，我和我的影子独处，它说它有悄悄话想跟我说，它说它很想念你，原来，我和我的影子都在想你。</p>
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
            <img src="images/a17.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a17.jpg"></a>
          </div>
          
          
          
          
          

		          <div>
		            <img src="images/a37.jpg" alt="-temp-placeholder-thumb">
		            <a href="images_blue/a37.jpg"></a>
		          </div>







        </div>
        <!-- Birthdays Ends! -->

        <!-- Weddings -->
        <div class="items levels" data-group="weddings">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a36.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a36.jpga36.jpg"></a>
          </div>

        </div>
        <!-- Weddings Ends! -->

        <!-- Showers -->
        <div class="items levels" data-group="showers">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a38.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a38.jpg"></a>
          </div>

        </div>
        <!-- Showers Ends! -->

        <!-- Parties -->
        <div class="items levels" data-group="parties">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a39.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a39.jpg"></a>
          </div>

        </div>
        <!-- Parties Ends! -->

        <!-- Corporate -->
        <div class="items levels" data-group="corporate">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a40.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a40.jpg"></a>
          </div>

        </div>
        <!-- Corporate Ends! -->

        <!-- Celebrations -->
        <div class="items levels" data-group="celebrations">
          <a href="" class="close">close</a>

          <div>
            <img src="images/a41.jpg" alt="-temp-placeholder-thumb">
            <a href="images/a41.jpg"></a>
          </div>

        </div>
        <!-- Celebrations Ends! -->

        <!-- Portfolio List -->
        <div class="item">
          <img src="images/a42.jpg" alt="-temp-placeholder-thumb" style="width: 273px; height: 258px">
          <a href="" data-group="birthdays" ><span>幻想</span></a>
        </div>

        <div class="item">
          <img src="images/a43.jpg" alt="-temp-placeholder-thumb" style="width: 273px; height: 258px">
          <a href="" data-group="weddings"><span>Weddings</span></a>
        </div>

        <div class="item">
          <img src="images/a44.jpg" alt="-temp-placeholder-thumb" style="width: 273px; height: 258px">
          <a href="" data-group="showers"><span>Baby<br>Showers</span></a>
        </div>

        <div class="item">
          <img src="images/a45.jpg" alt="-temp-placeholder-thumb" style="width: 273px; height: 258px" >
          <a href="" data-group="parties"><span>VIP<br>Parties</span></a>
        </div>

        <div class="item">
          <img src="images/a46.jpg" alt="-temp-placeholder-thumb" style="width: 273px; height: 258px">
          <a href="" data-group="corporate "><span>Corporate<br>Events</span></a>
        </div>

        <div class="item">
          <img src="images/a47.jpg" alt="-temp-placeholder-thumb" style="width: 273px; height: 258px">
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
          <img src="images/a7.jpg" alt="team-member-name1" style="height: 664px; width: 409px; ">
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
          <img src="images/a48.jpg" alt="team-member-name2" style="height: 664px; width: 409px; ">
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
          <img src="images/a40.jpg" alt="team-member-name3" style="height: 664px; width: 409px; ">
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
          <img src="images/c.jpg" alt="team-member-name4" style="height: 664px; width: 409px; ">
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
      <div id="map_canvas"></div>爱到分才显珍贵<div class="map">
        

        <div class="address">
          
        </div>
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
      <p>Copyright &copy;2014 <a href="index.html">Candy Queen</a></p>
    </div>
  </div>
  <!-- Footer Ends! -->

</div>
	
	
	
	
</body>
</html>
