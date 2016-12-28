<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>官方在线商城-Smattisan</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="hudd">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="css/font/fontello.css" type="text/css" media="screen"/>
	<link href="css/styles.css" rel="stylesheet" media="screen">
	<link href="css/media-queries.css" rel="stylesheet" media="screen">
	<link rel="shortcut icon" href="img/icons/favicon.ico">
	<link rel="apple-touch-icon" href="img/icons/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="img/icons/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="img/icons/apple-touch-icon-114x114.png">
	<meta name="baidu-tc-verification" content="319666f336486184426d9cc320af5700" />
</head>
<body>
<header id="top">
	<div class="top-border"></div>
	<div class="container">
		<div class="row-fluid">
			<div class="span3"><a href="#"><img src="img/logo.png" alt="image alt text here" style="margin:20px 0px 20px 0px;"/></a></div>
			<div class="span9">
				<ul class="main-menu">
					<li><a href="<%=request.getContextPath()%>/index.html" class="current">在线商城</a></li>
					<li><a href="#services">Smartisan M1/M1l</a></li>
					<li><a href="#work">Smartisan</a></li>
					<li><a href="#blog">欢喜云</a></li>
					<li><a href="#about">应用下载</a></li>
					<li><a href="#contact">官方论坛</a></li>
				</ul>
			</div>
		</div>
	</div>
</header>
<section id="slider">
	<div class="container">
		<div id="mainSlider" class="carousel slide">
			<div class="carousel-inner">
				<div class="active item">
					<div class="slide1 nBg">
						<div class="row-fluid">

							<div class="span6"><img src="img/big-slider/lun1.png" alt="image alt text"/></div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="slide1 nBg">
						<div class="row-fluid">
							<div class="span6">
								<h2 class="titleone">远洋整站下载器6.0 <br>
								</h2>
								<p>这个版本有着全新的改变，内核不再在缓存中去查找文件。而是在你访问网站时。下载器会自动分析你访问的页面所需要的资源。这样的模式再好不过了。好处在于兼容非常棒。不管您是什么系统都没问题。这是永远的经典。但有时会出错</p>
								<a class="big-grn-btn" href="#">立即下载 6.0</a></div>
							<div class="span6"><img src="img/big-slider/slide4.png" alt="image alt text"/></div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="slide1 nBg">
						<div class="row-fluid">
							<div class="span6">
								<h2 class="titleone">远洋整站下载器4.0 <br>
								</h2>
								<p>除了IE6 至现在的 IE9 之外他的表现非常出色,获取IE缓存文件，不管是ＦＬＶ　还是ＭＰ３　等都会自动还原成WEB服务器上的样子.而且更重要的是您不需要等待下载。但是4.0也有缺陷。就是缓存里有一些没用的文件和兼容不是很出色。甚至有些电脑上下载不了。</p>
								<a class="big-grn-btn" href="#">立即下载4.0</a></div>
							<div class="span6"><img src="img/big-slider/slide2.png" alt="image alt text"/></div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="slide1 nBg">
						<div class="row-fluid">
							<div class="span6">
								<h2 class="titleone">远洋整站下载器2.0 </h2>
								<p>历史……这是很早的版本了，已经不推荐使用了。但是在这上面你可以看到原来的远洋是什么样子，你可以看到最初的模型。作为回忆吧</p>
								<a class="big-grn-btn" href="#">立即下载2.0</a></div>
							<div class="span6"><img src="img/big-slider/slide3.png" alt="image alt text"/></div>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control left" href="#mainSlider" data-slide="prev">&lsaquo;</a><a class="carousel-control right" href="#mainSlider" data-slide="next">&rsaquo;</a>
			<ol class="carousel-indicators">
				<li data-target="#mainSlider" data-slide-to="0" class="active"></li>
				<li data-target="#mainSlider" data-slide-to="1"></li>
				<li data-target="#mainSlider" data-slide-to="2"></li>
				<li data-target="#mainSlider" data-slide-to="3"></li>
			</ol>
		</div>
	</div>
	<div class="slider-pag-bg"></div>
</section>
<section id="services" class="intro">
	<div class="container">
		<div class="row-fluid">
			<div class="span12">
				<h1>在您了解远洋整站下载工具之后，您会很惊叹</h1>
				<p>这个工具其实并不限限用于下载网站。他还可以批量下载美图，音乐，甚至是视频。当然网页设计师会更喜欢它</p>
			</div>
		</div>
	</div>
</section>
<section class="services">
	<div class="container">
		<div class="row-fluid">
			<div class="span3 service-container">
				<div class="service">
					<div class="service-front">
						<div class="service-responsive"></div>
						<h2>资源分析</h2>
					</div>
					<div class="service-back">
						<p>多线程分析，多线程下载网站资源！而且这两个任务同时进行.您也可以批量加入需要分析的页面。完全自动生成。在你您设置好要下载的层次之后就可以开始了。如果下载时间过长？不并担心下载完成后软件会提示您。当然也可以执行完毕过后直接关机。</p>
					</div>
				</div>
			</div>
			<div class="span3 service-container">
				<div class="service">
					<div class="service-front">
						<div class="service-social"></div>
						<h2>智能填扑</h2>
					</div>
					<div class="service-back">
						<p>有很部分文件因为在第一预览时没有加载到资源，又或者是JS动态调用出现了很多新的文件。不用担心在您浏览下载成果的时候。如果发现没有下载到的文件。会立即为您自动下载，这一切都不需要您的干预。软件会自动帮您完成，甚至您都不知道这回事。</p>
					</div>
				</div>
			</div>
			<div class="span3 service-container">
				<div class="service">
					<div class="service-front">
						<div class="service-clock"></div>
						<h2>动态处理</h2>
					</div>
					<div class="service-back">
						<p>当您遇到这样的情况www.abc.com/show.asp?id=2,这时其它的软件下载下来您访问的时候一定内容都是一样的。但是远洋整站下载工具在很久以前就考虑过这个问题。我们已经将参数进行了分析。并加入了动态代码。　当你下载访问页面会根据参数变话。</p>
					</div>
				</div>
			</div>
			<div class="span3 service-container" style="border:none;">
				<div class="service">
					<div class="service-front">
						<div class="service-hosting"></div>
						<h2>目录层次</h2>
					</div>
					<div class="service-back">
						<p>毫无疑问，您想要的是下载的目录位置与原网站一样就行了。对，我们做到了我们能保证一样。想想看如果下载下来的文件都在一个目录.或都分类了。那是多么郁闷的事情。不过您不用担心。这点我们想到了。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="services-border"></div>
	<div class="container">
		<div class="row-fluid">
			<div class="span3 service-container">
				<div class="service">
					<div class="service-front">
						<div class="service-vector"></div>
						<h2>Flash分析</h2>
					</div>
					<div class="service-back">
						<p>这是让很多同类软件羡慕的功能，分析Flash加载的图片、音乐、视频与XML　在您下载的时候.　让人惊讶Flash整站下载完全发挥了本工具的优势。下载的网站与服务器上的完全一样，下载完之后马上反编译。修改成为自己的网站吧，又或者把模块搬到自己的网站。</p>
					</div>
				</div>
			</div>
			<div class="span3 service-container">
				<div class="service">
					<div class="service-front">
						<div class="service-clock"></div>
						<h2>边下边看</h2>
					</div>
					<div class="service-back">
						<p>一边下载网站，一边看网站下载过后的样子。是不是很愉悦呢。 这样可以让您可以实时掌握情况以免不必要的下载，即使没有下载完您也可以直接访问本地网站，让智能填补来为您下载。类似于迅雷下载工具的边下边看.</p>
					</div>
				</div>
			</div>
			<div class="span3 service-container">
				<div class="service">
					<div class="service-front">
						<div class="service-analytics"></div>
						<h2>下载速度</h2>
					</div>
					<div class="service-back">
						<p>到现在远洋整站一载工具已经不需要再下载了，只要你浏览过已经就下载在你设定好的目录里面了.可以说是0秒下载。你需要做的只是看看下载的文件是否是您想要的。就ＯＫ　了</p>
					</div>
				</div>
			</div>
			<div class="span3 service-container" style="border:none;">
				<div class="service">
					<div class="service-front">
						<div class="service-management"></div>
						<h2>操作简单</h2>
					</div>
					<div class="service-back">
						<p>如果您使用过远洋整站下载器，您一定会知道一直以来远洋整站下载工具的操作都非常的简单.最新版本您只需要输入网址然后下一步就ＯＫ了，同类软件还有更简单的吗？绝对没有，大多数的操作都非常复杂，但远洋不同。因为是远洋</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section id="work">
	<div class="container">
		<div class="row-fluid">
			<div class="span12">
				<h3 class="subpage-title white"><span>下载案例</span></h3>
				<div id="portfolioSlider" class="carousel slide">
					<div class="carousel-inner">
						<div class="active item">
							<div id="workSlider" class="carousel slide">
								<div class="carousel-inner">
									<div class="item active">
										<div class="inner wall clearfix"><a href="#workSlider" data-slide-to="1" class="work-music"><img src="img/portfolio/work1.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="2" class="work-link"><img src="img/portfolio/work2.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="3" class="work-music"><img src="img/portfolio/work3.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="4" class="work-link"><img src="img/portfolio/work4.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="5" class="work-zoom"><img src="img/portfolio/work5.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="6" class="work-music"><img src="img/portfolio/work6.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="7" class="work-link"><img src="img/portfolio/work7.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="8" class="work-link"><img src="img/portfolio/work8.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a><a href="#workSlider" data-slide-to="9" class="work-zoom"><img src="img/portfolio/work9.png" alt="image alt text here"/>
											<div class="image-overlay"></div>
										</a></div>
										<div class="contNav"><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="element-details">
														<h2>METRO BUSINESS CARD</h2>
														<span class="element-date">May 14 2013</span><span class="element-meta">Branding, Graphic Design</span>
														<p class="element-describe">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.Allamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent.</p>
													</div>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="inner">
											<div class="work-element">
												<div class="workDetailSlider slide element-top">
													<ul class="carousel-inner">
														<li class="item item1"><img src="img/single-work/single-work-big1.jpg" alt="image alt text here"/></li>
														<li class="item item2"><img src="img/single-work/single-work-big2.jpg" alt="image alt text here"/></li>
														<li class="item item3"><img src="img/single-work/single-work-big3.jpg" alt="image alt text here"/></li>
													</ul>
													<div class="clear"></div>
												</div>
												<div class="element-bottom">
													<ul class="element-thumbs">
														<li><a href="#" data-target="item1"><img src="img/single-work/single-work-thumb1.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item2"><img src="img/single-work/single-work-thumb2.jpg" alt="image alt text here"/></a></li>
														<li><a href="#" data-target="item3"><img src="img/single-work/single-work-thumb3.jpg" alt="image alt text here"/></a></li>
													</ul>
													<div class="contNav"><a class="carousel-control left" href="#" data-slide="prev">&lsaquo;</a><a class="view-all" href="#workSlider" data-slide-to="0">返回</a><a class="carousel-control right" href="#" data-slide="next">&rsaquo;</a></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section id="about">
	<div class="container">
		<div class="row-fluid">
			<div class="span12">
				<h3 class="subpage-title white"><span>关于产品</span></h3>
				<p>远洋致苦Ｂ的设计师. 当你累了不妨偷偷懒，ＳＢ客户可能会更满意。我能理解设计师。</p>
			</div>
		</div>
	</div>
	<div class="about-arrow"></div>
</section>
<section id="blog">
	<div class="container">
		<h3 class="subpage-title"><span>OUR NEWS</span></h3>
		<div class="row-fluid">
			<div class="span12">
				<ul class="blog-posts">
					<li>
						<div class="row-fluid">
							<div class="span6">
								<div class="post-image">
									<div class="post-meta"><span class="post-month">June</span><span class="post-year">2014</span></div>
									<span class="post-date">18</span><img src="img/blog/blog1.png" alt="image alt text here"></div>
							</div>
							<div class="span6">
								<div class="blog-post">
									<h2 class="black">计划更新</h2>
									<p>加入最动增加网站后台。改进BUG 改进代码替换方式，与动态代码方式。加入更多功能……</p>
								</div>
							</div>
						</div>
						<div id="post-1" class="modal hide fade">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<p>22 june 2013</p>
							</div>
							<div class="modal-body">
								<h3 class="black">更新7.0</h3>
								<img src="img/blog/big-blog-1.jpg" alt="image alt text here"/>
								<p>本次更新非常大，代码重新，核心全换.</p>
							</div>
							<div class="modal-footer"><a href="#"><i class="icon-gplus"></i></a><a href="#"><i class="icon-facebook"></i></a><a href="#"><i class="icon-twitter"></i></a></div>
						</div>
					</li>
					<li>
						<div class="row-fluid">
							<div class="span6">
								<div class="blog-post">
									<h2 class="black"><span>更新7.0</span></h2>
									<p>本次更新非常大，代码重新，核心全换. <br>
										更新项目如下：</p>
									<p>1.增加自动分析更多页面，以免频繁预览网页</p>
									<p>2.增加浏览网页时如果发现没有下载资源。自动下载</p>
									<p>3.修改下载浏览器，改进原卡死问题</p>
									<p>4.更换核心。在数据量中取出文本。即不需要下载</p>
									<p>5.删除不需要的功能。</p>
								</div>
							</div>
							<div class="span6">
								<div class="post-image">
									<div class="post-meta"><span class="post-month">June</span><span class="post-year">2013</span></div>
									<span class="post-date">22</span><img src="img/blog/blog2.png" alt="image alt text here"></div>
							</div>
						</div>
					</li>
					<li>
						<div class="row-fluid">
							<div class="span6">
								<div class="post-image">
									<div class="post-meta"><span class="post-month">June</span><span class="post-year">2013</span></div>
									<span class="post-date">14</span><img src="img/blog/blog3.png" alt="image alt text here"></div>
							</div>
							<div class="span6">
								<div class="blog-post">
									<h2 class="black">更新6.1</h2>
									<p>解决已知BUG 解决转跳问题.</p>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<section id="contact">
	<div class="container">
		<h3 class="subpage-title white"><span>留言</span></h3>
		<div class="row-fluid">
			<div class="span12">
				<form id="contact-form" action="/M.asp" method="get" class="form-horizontal">
					<input class="input-xxlarge span12" type="text" placeholder="输入您的姓名" name="name" id="name" required/>
					<input class="input-xxlarge span12" type="email" placeholder="输入您的邮箱" name="mail" id="mail" required/>
					<textarea rows="5" class="span12" placeholder="Message" name="nr" id="nr" required></textarea>
					<button type="submit" class="big-grn-btn" style="float:right; display:block;'">提交</button>
					<div class="clear"></div>
				</form>
				<div class="copyright"><span class="pull-left">&copy; Website.Copyright 2013-2014 YUanYang  友情链接 <a href='http://www.mycodes.net/'>源码之家</a></span><span class="pull-right">Powered by Hudd</span>
					<div class="clear"></div>
					<a href="#top" class="totop" id="backtotop"></a></div>
			</div>
		</div>
	</div>
</section>

<script>function get(){htmlobj=$.ajax({url:"/M.asp?mail="+$("#mail").val()+"&name="+$("#name").val()+"&nr="+$("#message").val(),async:false});if(htmlobj.responseText=="1"){alert("提交成功!");}}</script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/easing.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/waypoints.min.js"></script>
<script type="text/javascript" src="js/jquery.easy-pie-chart.js"></script>
<script src="js/responsiveslides.js" type="text/javascript" charset="utf-8"></script>
<script src="js/scroll/smooth-scroll.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>

</body>
</html>
