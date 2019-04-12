<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>已报名活动</title>
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
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/sweetalert/sweetalert2.min.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<link href="js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
	function getpart_exl(){
		$.ajax({
			   type: "GET",
			   url: "output_exl",
			   success: function(data){
				   if(data=="success"){
					   alert('下载成功！！！文件地址:"D:\\活动报名表.xls');
					   location.href='part_act.jsp';
			       	}else
			       		alert('下载失败！！！');
			       	}
			});
}
</script>
<style type="text/css">
	.login-button { /* 按钮美化 */
		width: 270px; /* 宽度 */
		height: 40px; /* 高度 */
		border-width: 0px; /* 边框宽度 */
		border-radius: 3px; /* 边框半径 */
		background: #1E90FF; /* 背景颜色 */
		cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
		outline: none; /* 不显示轮廓线 */
		font-family: Microsoft YaHei; /* 设置字体 */
		color: white; /* 字体颜色 */
		font-size: 17px; /* 字体大小 */
	}
	.login-button:hover { /* 鼠标移入按钮范围时改变颜色 */
		background: #5599FF;
}
</style>
</head>
<body>
	<!--header-->
	<div class="banner-in">
		<div class="container">
			<h6>
				首页 / <span>已报名活动</span>
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
					<li><a class="scroll" onclick="a_onclick()" style="cursor:pointer">捐助活动</a></li>
					<li><a href="login_user.jsp" class="scroll">用户中心</a></li>
				</c:if>
				<c:if test="${!empty user }">
					<li ><a href="index_user.jsp" class="scroll">首页</a></li>
					<li><a href="pub_activities" class="scroll">公益活动</a></li>
					<li><a href="donation_activities.jsp" class="scroll">捐助活动</a></li>
					<li class="active"><a href="part_act.jsp" class="scroll">已报名公益活动</a></li>
					<li><a href="user_center.jsp" class="scroll">用户中心</a></li>
					<li><a href="javascript:void(0)" onclick="logOut();"  class="scroll">注销</a></li>
				</c:if>
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
	<!--content-->
	<div class="content">
		<div class="container">
			<div class="col-md-12">
				<table width="100%" border="1" cellpadding="2" cellspacing="1" style="word-break:break-all; word-wrap:break-all;">
					<tr>
						<td width="150px" style="word-wrap:break-word;white-space: nowrap;">活动名称</td>
						<td width="100px" style="word-wrap:break-word;white-space: nowrap;">发布人</td>
						<td width="150px" style="word-wrap:break-word;white-space: nowrap;">活动时间</td>
						<td width="150px" style="word-wrap:break-word;white-space: nowrap;">报名者</td>
						<td width="150px" style="word-wrap:break-word;white-space: nowrap;">报名者联系方式</td>
						<td width="150px" style="word-wrap:break-word;white-space: nowrap;">报名者学校、班级</td>
					</tr>
					<tr>
					<c:forEach items="${importExl }" var="importExl">
						<tr>
							<td>${importExl.title }</td>
							<td>${importExl.pubusername }</td>
							<td>${importExl.activitydate }</td>
							<td>${importExl.username }</td>
							<td>${importExl.username_tel }</td>
							<td>${importExl.college_class }</td>
						</tr>
					</c:forEach>
					</tr>
				</table>
				<button class="login-button" onclick="getpart_exl()">下载报名单</button>
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