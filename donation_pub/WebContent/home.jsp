<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>基于JSP的校园爱心捐助及公益活动</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sweetalert/sweetalert2.min.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<link href="js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css" />
		<!-- 配置文件 -->
		<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
		<!-- 编辑器源码文件 -->
		<script type="text/javascript" src="ueditor/ueditor.all.js"></script>

<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Open Heart Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
</head>
<body>
	<!--header-->

	<!--banner-->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto : true,
				speed : 500,
				namespace : "callbacks",
				pager : true,
			});
		});
	</script>
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides" id="slider">
				<li><img src="images/banner.jpg" alt="">
					<div class="banner">
						<h2>伸出援助之手1</h2>
						<p>洛雷姆·伊普桑·多洛尔·西特·阿美，连续的爱的精英，塞德·戴姆·诺努米尼·尼布·尤伊斯莫德</p>
					</div></li>
				<li><img src="images/banner2.jpg" alt="">
					<div class="banner">
						<h2>伸出援助之手2</h2>
						<p>洛雷姆·伊普桑·多洛尔·西特·阿美，连续的爱的精英，塞德·戴姆·诺努米尼·尼布·尤伊斯莫德</p>
					</div></li>
				<li><img src="images/banner.jpg" alt="">
					<div class="banner">
						<h2>伸出援助之手3</h2>
						<p>洛雷姆·伊普桑·多洛尔·西特·阿美，连续的爱的精英，塞德·戴姆·诺努米尼·尼布·尤伊斯莫德</p>
					</div></li>
			</ul>
		</div>
	</div>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index.html"><img src="images/logo.png" alt=" " /></a>
			</div>
			<div class="top-nav">
				<span class="menu"> </span>
				<ul>
					<c:if test="${empty user }" >
					<li class="active"><a href="index_user.jsp" class="scroll">首页
					</a></li>
					<li><a class="scroll" onclick="a_onclick()" style="cursor:pointer">公益报名</a></li>
					<li><a class="scroll" onclick="a_onclick()" style="cursor:pointer">捐助活动</a></li>
					<li><a href="login_user.jsp" class="scroll">用户中心</a></li>
				</c:if>
				<c:if test="${!empty user }">
					<li ><a href="index_user.jsp" class="scroll">首页</a></li>
					<li><a href="pub_activities" class="scroll">公益活动</a></li>
					<li><a href="donation_activities.jsp" class="scroll">捐助活动</a></li>
					<li><a href="part_act.jsp" class="scroll">已报名公益活动</a></li>
					<li  class="active"><a href="user_center.jsp" class="scroll">用户中心</a></li>
					<li><a href="javascript:void(0)" onclick="logOut();"  class="scroll">注销</a></li>
				</c:if>
				</ul>
				</ul>
				<!--script-->
				<script>
					$("span.menu").click(function() {
						$(".top-nav ul").slideToggle(500, function() {
						});
					});
				</script>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!---->
	<!--content-->
	<div class="content">
		<div class="container">
			<div class="donate">
				<div class="donate-grid">
					<p>奥雷姆·伊普索姆·多尔·西特·阿米特（Orem ipsum dolor sit amet）、连续的和平精英（Adipiscing elit）、
					塞德·戴姆·诺努米尼·尼布·尤伊斯莫德·廷奇登（Sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
					magna aliqua但如果是最小的鹿肉，那么诺斯特鲁德就要执行一个通用的协议。</p>
				</div>
				<div class="sit-in">
					<div class="col-md-4 ad-in">
						<h5>Mirum est notare</h5>
						<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
							consequat. Duis autem vel eum iriure dolor in hendrerit in
							vulputate velit esse molestie consequat, vel illum dolore eu</p>
						<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo</p>
					</div>
					<div class="col-md-4 ad-in">
						<h5>Mirum est notare</h5>
						<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
							consequat. Duis autem vel eum iriure dolor in hendrerit in
							vulputate velit esse molestie consequat, vel illum dolore eu</p>
						<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo</p>
					</div>
					<div class="col-md-4 ad-in">
						<h5>Mirum est notare</h5>
						<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
							consequat. Duis autem vel eum iriure dolor in hendrerit in
							vulputate velit esse molestie consequat, vel illum dolore eu</p>
						<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
							ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo</p>
					</div>
					<div class="clearfix"></div>
				</div>

				<a href="#" class="btn  btn-1c">DONATE</a>

			</div>
		</div>
		<!---->
		<div class="copyrights">
			Collect from <a href="http://www.cssmoban.com/">企业网站模板</a>
		</div>
		<div class="number-at">
			<div class="in-number-in">
				<div class="in-number">
					<div class="wmuSlider example1">
						<div class="wmuSliderWrapper">
							<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="welcome_box">
								<p>Claritas est etiam processus dynamicus, qui sequitur
									mutationem consuetudium lectorum. Mirum est notare quam littera
									gothica, quam nunc putamus parum claram, anteposuerit
									litterarum formas humanitatis per seacula quarta decima et
									quinta decima</p>
							</div>
							<div class="clearfix"></div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="welcome_box">
								<p>Claritas est etiam processus dynamicus, qui sequitur
									mutationem consuetudium lectorum. Mirum est notare quam littera
									gothica, quam nunc putamus parum claram, anteposuerit
									litterarum formas humanitatis per seacula quarta decima et
									quinta decima</p>
							</div>
							<div class="clearfix"></div>
							</article>
							<article style="position: absolute; width: 100%; opacity: 0;">
							<div class="welcome_box">
								<p>Claritas est etiam processus dynamicus, qui sequitur
									mutationem consuetudium lectorum. Mirum est notare quam littera
									gothica, quam nunc putamus parum claram, anteposuerit
									litterarum formas humanitatis per seacula quarta decima et
									quinta decima</p>
							</div>
							<div class="clearfix"></div>
							</article>
						</div>
					</div>
					<!---->
					<script src="js/jquery.wmuSlider.js"></script>
					<script>
						$('.example1').wmuSlider({
							pagination : false,
						});
					</script>
				</div>
			</div>
			<div class="grid-men">
				<div class="men-grid">
					<span>05</span>
					<p>Ut wisi enim ad minim veniam, quis nostrud</p>
					<a href="single.html"><img class="img-responsive"
						src="images/pi1.jpg" alt=" " /></a>
				</div>
				<div class="men-grid number-ape">
					<span>01</span>
					<p>Ut wisi enim ad minim veniam, quis nostrud</p>
					<a href="single.html"><img class="img-responsive"
						src="images/pi2.jpg" alt=" " /></a>
				</div>
				<div class="men-grid ad-right">
					<span>18</span>
					<p>Ut wisi enim ad minim veniam, quis nostrud</p>
					<a href="single.html"><img class="img-responsive"
						src="images/pi3.jpg" alt=" " /></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!---->
		<div class="services-in">
			<div class="container">
				<h3>SERVICES</h3>
				<div class="service-grid">
					<div class="col-md-4 ser-in">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><div
								class="b-line b-line1"></div>
							<div class="b-line b-line2"></div>
							<div class="b-line b-line3"></div>
							<div class="b-line b-line4"></div>
							<div class="b-line b-line5"></div> <img class="img-responsive"
							src="images/pic.jpg" style="top: 0px;" alt=" " />
						<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img src="images/plus.png" alt="" style="top: 0px;">
								</h2>
							</div></a>
						<h5>Duis autem vel eum</h5>
						<span>Claritas est etiam</span>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
							sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
							aliquam erat volutpat. Ut wisi enim ad minim veniam,.</p>
						<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
					</div>
					<div class="col-md-4 ser-in">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><div
								class="b-line b-line1"></div>
							<div class="b-line b-line2"></div>
							<div class="b-line b-line3"></div>
							<div class="b-line b-line4"></div>
							<div class="b-line b-line5"></div> <img class="img-responsive"
							src="images/pic1.jpg" style="top: 0px;" alt=" " />
						<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img src="images/plus.png" alt="" style="top: 0px;">
								</h2>
							</div></a>
						<h5>Duis autem vel eum</h5>
						<span>Claritas est etiam</span>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
							sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
							aliquam erat volutpat. Ut wisi enim ad minim veniam,.</p>
						<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
					</div>
					<div class="col-md-4 ser-in">
						<a href="single.html" class="b-link-stripe b-animate-go  thickbox"><div
								class="b-line b-line1"></div>
							<div class="b-line b-line2"></div>
							<div class="b-line b-line3"></div>
							<div class="b-line b-line4"></div>
							<div class="b-line b-line5"></div> <img class="img-responsive"
							src="images/pic2.jpg" style="top: 0px;" alt=" " />
						<div class="b-wrapper">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<img src="images/plus.png" alt="" style="top: 0px;">
								</h2>
							</div></a>
						<h5>Duis autem vel eum</h5>
						<span>Claritas est etiam</span>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
							sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
							aliquam erat volutpat. Ut wisi enim ad minim veniam,.</p>
						<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container">
			<span class="drop"> </span>
			<p>
				<p>版权所有©2019 浙江树人大学. All rights reserved.浙江省杭州市拱墅区树人路8号</p>
			</p>
		</div>
	</div>
</body>
</html>