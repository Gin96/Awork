<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
    <title>一见钟情</title>
	
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

<body class="index-page" >
			
	
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
	
	<header>

		<!-- Carousel -->
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
			    	<img src="images/1.jpg" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <div class="logo">
								<a href="#">
									<div class="name t-right">Jason <span> Satrovsky  </span></div><div class="and">&amp;</div><div class="name t-left"> Sophie <span> Angela</span></div>
								</a>
							</div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="images/2.jpg" alt="Second slide">
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
			    	<img src="images/3.jpg" alt="Third slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <div class="logo">
								<a href="#">
									<div class="name t-right">Jason <span>勇气</span></div><div class="and">&amp;</div><div class="name t-left"> Sophie <span> Angela</span></div>
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
		</div><!-- /carousel -->

	</header>
	<!-- /Section: intro -->
    
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >ç½é¡µæ¨¡æ¿</a></div>
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content">
	
		<!-- ////////////Content Box 01 -->
		<section class="box-content box-1">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 ">
						<div class="box-item">
							<a href="#"><img src="images/a.jpg" title="icon-name" class="img-circle" style="height: 243px; width: 193px; "></a>
							<h3>一见钟情是唯一真诚的爱情；稍有犹豫便就一闪而过。</h3>
							<p>爱情无非两种：有偿和无偿。前者，是在自己有所付出后希望得到对方的回报；而后者，只在乎自己付出多少；而无关对方。前者或许会累，而后者，仅仅在于自己是否会继续下去而已！！</p>
							<a class="btn btn-sm" href="#">查看更多>></a>
						</div>
			 		</div>
			 		<div class="col-sm-6 ">
						<div class="box-item">
							<a href="#"><img src="images/b.jpg" title="icon-name" class="img-circle" style="height: 243px; width: 193px; "></a>
							<h3>有一件疯狂的小事，不值得一提的小事叫爱情。</h3>
							<p>爱情是找不到的，它并不在人生中的某个地方可以让人去找，人们只可能在生活中偶然撞见爱情，也许有的时候爱情就在你旁边，只是你不知道，还在一直傻傻的寻找爱情，等到发现时已经晚了，因为她已经是别人的她了......</p>
							<a class="btn btn-sm" href="#">查看更多>></a>
						</div>
			 		</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 02 -->
		<section class="box-content box-2 box-style-1">
			<div class="container">
				<div class="row heading">
					 <div class="col-lg-12">	
	                    <h2>HAVE BEEN MARRIED SINCE</h2>
						<hr class="line">
                    	<div class="intro">Lorem ipsum dolor sit amet</div>
	                </div>
				</div>
				<div class="row">
					<div class="box-item">
						<div class="centered text-center" id="myCounter"></div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 03 -->
		<section class="box-content box-3">
			<div class="container">
				<div class="row heading">
					<div class="col-lg-12">	
	                    <h2>PHOTO GALLERY</h2>
						<hr class="line">
                    	<div class="intro">Lorem ipsum dolor sit amet</div>
	                </div>
				</div>
				<div class="row box-item">
					<ul id="da-thumbs" class="da-thumbs">
						<li>
							<a href="#">
								<img src="images/c.jpg" style="height: 234px; width: 358px; "/>
								<div><span>爱情是一朵生长在悬崖边缘的花朵，想要摘取它，需要勇气！！</span></div>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="images/d.jpg" style="height: 234px; width: 358px; " />
								<div><span>爱情是女孩子最好的化妆品.........但常常会有副作用。</span></div>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="images/6.jpg" />
								<div><span>工作退一步海阔天空，爱情晚一步人去楼空..</span></div>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="images/a7.jpg" />
								<div><span>爱情不是人生的全部，却是我人生的味道。</span></div>
							</a>
						</li>
						<li>	
							<a href="#">
								<img src="images/8.jpg" />
								<div><span>她可以把整个生命交给爱情，但是却不能把婚姻交给自己。</span></div>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="images/f.jpg" style="height: 234px; width: 358px; " />
								<div><span>缘分。一切不明不白，不清不楚的事情都归类于缘分和爱情。</span></div>
							</a>
						</li>
						
					</ul>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 04 -->
		<section class="box-content box-4 box-style-2">
			<div class="container">
				<div class="row">
					<div class="box-item">
						<blockquote><p>每个人的青春，终究逃不过一场爱情，爱情？也许是初见时那字的思量，回首时那泪满衣襟的感慨；也许是没心没肺的大笑，或许是撕心裂肺的痛哭。。。</p></blockquote>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 05 -->
		<section class="box-content box-5">
			<div class="container">
				<div class="row heading">
					<div class="col-lg-12">	
	                    <h2>BRIDESMAID ```````````````````````````````````````````````````````````````````````````````` GROOMSMEN</h2>
						<hr class="line">
                    	<div class="intro">Lorem ipsum dolor sit amet</div>
	                </div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="row box-item">
							<div class="col-md-3 center">
								<img src="images/g.jpg" class="img-circle" style="width: 405px; height: 270px"/>
							</div>
							<div class="col-md-9">
								<div class="wrapper">
									<h3>给我一个承诺，我哪里都不会去，就站在这里等着你。</h3>
									<p>我会永远记得一个人，会和我一起蹲在路边等外卖；我会永远记得一个人，会在快迟到时拉着我在人群中飞奔；我会永远记得一个人，会在房间的转角吓得我尖叫。</p>
									<a class="btn btn-skin" href="#">Read More</a>
								</div>
							</div>
						</div>
						<div class="row box-item">
							<div class="col-md-3 fix-right center">
								<img src="images/a3.jpg" class="img-circle" style="width: 273px; height: 263px"/>
							</div>
							<div class="col-md-9">
								<div class="wrapper">
									<h3 class="fix-right">爱，原来是没有名字的，在相遇之前等待的，就是它的名字。</h3>
									<p class="fix-right"> 爱情就如一杯牛奶咖啡，香香地飘在外面，甜甜地浮在表面，酸酸地含在里面，苦苦地沉在底面，模模糊糊地把你倒映在咖啡里面。</p>
									<a class="btn btn-skin fix-right" href="#">Read More</a>
								</div>
							</div>
						</div>
						<div class="row box-item">
							<div class="col-md-3 center">
								<img src="images/a1.jpg" class="img-circle" style="width: 273px; height: 263px"/>
							</div>
							<div class="col-md-9">
								<div class="wrapper">
									<h3>等到天放晴的时候，也许我会好好再爱你一遍。</h3>
									<p>不敢说出口，因为我胆小，因为如果你拒绝，我以后就不能够再见到你了，宁愿默默的爱着你，不能让你知道，直到，直到你投进别人的怀抱！
									</p>
									<a class="btn btn-skin" href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="row box-item">
							<div class="col-md-3 center">
								<img src="images/a4.jpg" class="img-circle" style="width: 273px; height: 263px"/>
							</div>
							<div class="col-md-9">
								<div class="wrapper">
									<h3>鱼上钩了，那是因为鱼爱上了渔夫，它愿用生命来博渔夫一笑。</h3>
									<p>眼波如水，映出窗外繁星点点。迷离的星光，在淡淡的云烟中隐约闪现。空气中到处弥漫着你的气息。你，是我今生无法忘记的梦，无法诠释的情缘。</p>
									<a class="btn btn-skin" href="#">Read More</a>
								</div>
							</div>
						</div>
						<div class="row box-item">
							<div class="col-md-3 fix-right center">
								<img src="images/a6.jpg " class="img-circle" style="width: 273px; height: 263px"/>
							</div>
							<div class="col-md-9">
								<div class="wrapper">
									<h3 class="fix-right">想你的时候有些幸福，幸福得有些难过。</h3>
									<p class="fix-right">我会永远记得一个人，会和我一起蹲在路边等外卖；我会永远记得一个人，会在快迟到时拉着我在人群中飞奔；我会永远记得一个人，会在房间的转角吓得我尖叫。</p>
									<a class="btn btn-skin fix-right" href="#">Read More</a>
								</div>
							</div>
						</div>
						<div class="row box-item">
							<div class="col-md-3 center">
								<img src="images/a5.jpg" class="img-circle" style="width: 273px; height: 263px"/>
							</div>
							<div class="col-md-9">
								<div class="wrapper">
									<h3>所谓最难忘的，就是从来不曾想起，却永远无法忘记</h3>
									<p>最难打开的是心门，最难走的路是心路，最难过的桥是心桥，最难调整的是心态。世界上最难干的工程是改造人的内心世界！手指脏了，大可不必把手指砍掉；帽子小了，大可不必把头削掉。当你抓住一件东西总不放时，或许你永远只会拥有这件东西，如果肯放手，便获得了其它选择机会。</p>
									<a class="btn btn-skin" href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 06 -->
		<section class="box-content box-6">
			<div class="container">
				<div class="row heading">
					<div class="col-lg-12">	
	                    <h2>爱    就要勇气</h2>
						<hr class="line">
                    	<div class="intro">勇气+呵护=爱情一半</div>
	                </div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="box-item">
							<img src="images/a8.jpg" class="img-responsive"/>
							<div class="content">
								<h3>爱是一种需要不断被人证明的虚妄，就像烟花需要被点燃才能看到辉煌一样。</h3>
								<p>就像追逐爱情的天使，认真而用情地叠着千纸鹤，将爱的梦境和指纹的柔情，连同千纸鹤的精彩，一同飞到爱的天河，将爱情的种子，撒在泥泞的土壤里，等待着爱情的心愿开花结果。</p>
								<span>MAY 21, 2014 BY VAFPRESS</span>
							</div>
						</div>
						<div class="box-item">
							<img src="images/13.jpg" class="img-responsive"/>
							<div class="content">
								<h3>人生有你，阳光灿烂；人生有你，四季温暖；人生有你，不畏艰险；人生有你，期待永远。</h3>
									<p>喜欢与你默默对视，喜欢在心的旷野里，与你缠绵相依。时光荏苒，无关风月，只是，愿意在你的注视下，轻执墨痕，为你写一段文字。一缕清风，一朵小花，一个微笑，一句轻声的问候，就够了。爱，无需刻意的装饰。</p>
								<span>MAY 21, 2014 BY VAFPRESS</span>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-item">
							<img src="images/10.jpg" class="img-responsive"/>
							<div class="content">
								<h3>你情我愿，那便是爱情最初的模样。</h3>
								<p>如果一个人开始怠慢你，请你不要离开他。不懂得珍惜你的人不要为之不舍，更不必继续付出你的爱情，到头来还是伤害自己，他人不会难过，因为爱你的人是不会让你难过。</p>
								<span>MAY 21, 2014 BY VAFPRESS</span>
							</div>
						</div>
						<div class="box-item">
							<img src="images/a9.jpg" class="img-responsive"/>
							<div class="content">
								<h3>结婚纪念</h3>
								<p>漫长的人生里，我们总会遇见一个人，教我们懂得爱情，相信爱情，再遇见更多的人教我们背弃爱情，瓦解爱情。可是偏偏程序颠倒，我先遇到太多叛离爱情的人，然后冰封冷藏掉自己的感情，但是遇见了你，它却因你而又有了温度和生机......</p>
								<span>MAY 21, 2014 BY VAFPRESS</span>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="box-item">
							<img src="images/14.jpg" class="img-responsive"/>
							<div class="content">
								<h3>如果有一天，我明白了什么是爱情，那一定是因为你。</h3>
								<p>对有些人来说爱情就像是奖杯或奖状一样，是让人高兴的产物；对有些人来说，爱情是为了对方无限等待的真实过程；对一个女人来说，爱情是一个连自己都要保密的秘密。</p>
								<span>MAY 21, 2014 BY VAFPRESS</span>
							</div>
						</div>
						<div class="box-item">
							<img src="images/15.jpg" class="img-responsive"/>
							<div class="content">
								<h3>爱，原来是没有名字的，在相遇之前等待的，就是它的名字。</h3>
								<p>美丽的梦和美丽的诗一样，都是可遇而不可求的，常常在最没能料到的时刻里出现。我喜欢那样的梦，在梦里，一切都可以重新开始，一切都可以慢慢解释，心里甚至还能感觉到，所有被浪费的时光竟然都能重回时的狂喜与感激。胸怀中满溢着幸福，只因你就在我眼前，对我微笑，一如当年。我真喜欢那样的梦，明明知道你已为我拔涉千里，却又觉得芳草鲜美，落英缤纷，好象你我才初初相遇。</p>
								<span>MAY 21, 2014 BY VAFPRESS</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ////////////Content Box 07 -->
		<section class="box-content box-7">
			<h1 align="center">我是有底线的！</h1>
		</section>
		
	</div>
	
	<footer>
		<div class="wrap-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="copyright">Boss1组♚☜☝☞ ♔&copy;简爱<a target="_blank" href="http://www.cssmoban.com/">我们不仅仅是世界500强！</a></div>
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
							<li><a href="#">我们的电话：</a>
							</li>
							<li><a href="#">100—861—1</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

    <!-- Core JavaScript Files -->  	 
    <script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->


	
	<!-- Img Hover -->
	<script type="text/javascript" src="js/jquery.hoverdir.js"></script>	
	<script type="text/javascript">
		$(function() {
		
			$(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

		});
	</script>
	
</body>

</html>
