<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>捐助活动</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Open Heart Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<!--//fonts-->
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/sweetalert/sweetalert2.min.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<link href="js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

</script>
</head>
<body>
	<!--header-->
	<div class="banner-in">
		<div class="container">
			<h6>
				首页 / <span>捐助活动</span>
			</h6>
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
					<li class="active"><a class="scroll" onclick="a_onclick()" style="cursor:pointer">捐助活动</a></li>
					<li><a href="login_user.jsp" class="scroll">用户中心</a></li>
				</c:if>
				<c:if test="${!empty user }">
					<li ><a href="index_user.jsp" class="scroll">首页</a></li>
					<li><a href="pub_activities" class="scroll">公益活动</a></li>
					<li class="active"><a href="donation_activities.jsp" class="scroll">捐助活动</a></li>
					<li ><a href="part_act.jsp" class="scroll">已报名公益活动</a></li>
					<li><a href="user_center.jsp" class="scroll">用户中心</a></li>
					<li><a href="javascript:void(0)" onclick="logOut();"  class="scroll">注销</a></li>
				</c:if>
				</ul>
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
			<div class="project">
				<h3>GALLERY</h3>
				<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function() {
						$('#horizontalTab').easyResponsiveTabs({
							type : 'default', //Types: default, vertical, accordion           
							width : 'auto', //auto or any width like 600px
							fit : true
						// 100% fit in a container
						});
					});
				</script>
				<link rel="stylesheet" href="css/swipebox.css">
				<script src="js/jquery.swipebox.min.js"></script>
				<script type="text/javascript">
					jQuery(function($) {
						$(".swipebox").swipebox();
					});
				</script>
				<!-- Portfolio Ends Here -->
				<div class="sap_tabs">
					<div id="horizontalTab"
						style="display: block; width: 100%; margin: 0px;">
						<ul class="resp-tabs-list">
							<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>所有信息</span></li>
						</ul>
						<div class="clearfix"></div>
						<div class="resp-tabs-container">
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
								<div class="tab_img" >
									<!-- 捐助信息展示 -->
									<table border="1" >
										<tr>
											<c:if test="${not empty ldonationAll}">
												<c:forEach var="donation" items="${ldonationAll}"
													varStatus="status">
													<c:if test="${(status.index+1) mod 3 !=1}">
														<td>
														<div width="239" height="390">
															<a href="single.html"
																class="b-link-stripe b-animate-go  thickbox">
																<div class="b-line b-line1"></div>
																<div class="b-line b-line2"></div>
																<div class="b-line b-line3"></div>
																<div class="b-line b-line4"></div>
																<div class="b-line b-line5"></div>
																<img class="img-responsive" src="${donation.picture }"
																style="top: 0px;" alt="" width="450" height="300"/>
																<div class="b-wrapper">
																	<h2 class="b-animate b-from-left    b-delay03 ">
																		<img src="images/plus.png" alt="" style="top: 0px;">
																	</h2>
																</div>
															</a>
															<div class="fashion">
																<h5>${donation.title }</h5>
																<p>${donation.content }</p>
																<a href="moredonation_activities?id=${donation.id }" class="btn  btn-1c btn1 btn-1d">更多信息</a>
															</div>
														</div>
													</td>
													</c:if>
													<c:if test="${(status.index+1) mod 3==1}">
														<tr>
															<td>
														<div width="239" height="390">
															<a href="single.html"
																class="b-link-stripe b-animate-go  thickbox">
																<div class="b-line b-line1"></div>
																<div class="b-line b-line2"></div>
																<div class="b-line b-line3"></div>
																<div class="b-line b-line4"></div>
																<div class="b-line b-line5"></div> <img
																class="img-responsive" src="${donation.picture }"
																style="top: 0px;" alt="" width="450" height="300"/>
																<div class="b-wrapper">
																	<h2 class="b-animate b-from-left    b-delay03 ">
																		<img src="images/plus.png" alt="" style="top: 0px;">
																	</h2>
																</div>
															</a>
															<div class="fashion">
																<h5>${donation.title }</h5>
																<p>${donation.content }</p>
																<a href="moredonation_activities?id=${donation.id }" class="btn  btn-1c btn1 btn-1d">更多信息</a>
															</div>
														</div>
													</td>
													</c:if>
												</c:forEach>
											</c:if>
										</tr>
									</table>
								</div>

							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
								<div class="tab_img">
									<div class="col-md-4 img-top ">
										<a href="single.html"
											class="b-link-stripe b-animate-go  thickbox">
											<div class="b-line b-line1"></div>
											<div class="b-line b-line2"></div>
											<div class="b-line b-line3"></div>
											<div class="b-line b-line4"></div>
											<div class="b-line b-line5"></div> <img
											class="img-responsive" src="images/pic1.jpg"
											style="top: 0px;" alt="" />
											<div class="b-wrapper">
												<h2 class="b-animate b-from-left    b-delay03 ">
													<img src="images/plus.png" alt="" style="top: 0px;">
												</h2>
											</div>
										</a>
										<div class="fashion">
											<h5>Contrary to popular belief</h5>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the industry's
												standard dummy tex</p>
											<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
										</div>
									</div>
									<div class="col-md-4 img-top ">
										<a href="single.html"
											class="b-link-stripe b-animate-go  thickbox">
											<div class="b-line b-line1"></div>
											<div class="b-line b-line2"></div>
											<div class="b-line b-line3"></div>
											<div class="b-line b-line4"></div>
											<div class="b-line b-line5"></div> <img
											class="img-responsive" src="images/pic2.jpg"
											style="top: 0px;" alt="" />
											<div class="b-wrapper">
												<h2 class="b-animate b-from-left    b-delay03 ">
													<img src="images/plus.png" alt="" style="top: 0px;">
												</h2>
											</div>
										</a>
										<div class="fashion">
											<h5>Contrary to popular belief</h5>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the industry's
												standard dummy tex</p>
											<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
										</div>
									</div>
									<div class="col-md-4 img-top ">
										<a href="single.html"
											class="b-link-stripe b-animate-go  thickbox">
											<div class="b-line b-line1"></div>
											<div class="b-line b-line2"></div>
											<div class="b-line b-line3"></div>
											<div class="b-line b-line4"></div>
											<div class="b-line b-line5"></div> <img
											class="img-responsive" src="images/p1.jpg" style="top: 0px;"
											alt="" />
											<div class="b-wrapper">
												<h2 class="b-animate b-from-left    b-delay03 ">
													<img src="images/plus.png" alt="" style="top: 0px;">
												</h2>
											</div>
										</a>
										<div class="fashion">
											<h5>Contrary to popular belief</h5>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the industry's
												standard dummy tex</p>
											<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
										</div>
									</div>

									<div class="clearfix"></div>
								</div>
							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
								<div class="tab_img">
									<div class="col-md-4 img-top ">
										<a href="single.html"
											class="b-link-stripe b-animate-go  thickbox">
											<div class="b-line b-line1"></div>
											<div class="b-line b-line2"></div>
											<div class="b-line b-line3"></div>
											<div class="b-line b-line4"></div>
											<div class="b-line b-line5"></div> <img
											class="img-responsive" src="images/p2.jpg" style="top: 0px;"
											alt="" />
											<div class="b-wrapper">
												<h2 class="b-animate b-from-left    b-delay03 ">
													<img src="images/plus.png" alt="" style="top: 0px;">
												</h2>
											</div>
										</a>
										<div class="fashion">
											<h5>Contrary to popular belief</h5>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the industry's
												standard dummy tex</p>
											<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
										</div>
									</div>
									<div class="col-md-4 img-top ">
										<a href="single.html"
											class="b-link-stripe b-animate-go  thickbox">
											<div class="b-line b-line1"></div>
											<div class="b-line b-line2"></div>
											<div class="b-line b-line3"></div>
											<div class="b-line b-line4"></div>
											<div class="b-line b-line5"></div> <img
											class="img-responsive" src="images/p3.jpg" style="top: 0px;"
											alt="" />
											<div class="b-wrapper">
												<h2 class="b-animate b-from-left    b-delay03 ">
													<img src="images/plus.png" alt="" style="top: 0px;">
												</h2>
											</div>
										</a>
										<div class="fashion">
											<h5>Contrary to popular belief</h5>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the industry's
												standard dummy tex</p>
											<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
										</div>
									</div>

									<div class="clearfix"></div>
								</div>
							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
								<div class="tab_img">
									<div class="col-md-4 img-top ">
										<a href="single.html"
											class="b-link-stripe b-animate-go  thickbox">
											<div class="b-line b-line1"></div>
											<div class="b-line b-line2"></div>
											<div class="b-line b-line3"></div>
											<div class="b-line b-line4"></div>
											<div class="b-line b-line5"></div> <img
											class="img-responsive" src="images/p1.jpg" style="top: 0px;"
											alt="" />
											<div class="b-wrapper">
												<h2 class="b-animate b-from-left    b-delay03 ">
													<img src="images/plus.png" alt="" style="top: 0px;">
												</h2>
											</div>
										</a>
										<div class="fashion">
											<h5>Contrary to popular belief</h5>
											<p>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the industry's
												standard dummy tex</p>
											<a href="#" class="btn  btn-1c btn1 btn-1d">MORE INFO</a>
										</div>
									</div>

									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
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