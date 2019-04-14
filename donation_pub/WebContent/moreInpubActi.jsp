<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>公益活动页面</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Open Heart Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<!--//fonts-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
<script type="text/javascript" src="js/sweetalert/sweetalert2.min.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<link href="js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
		$(function(){
			$("#more_insact").click(function(){
				var title = $("#title").val();
					$.ajax({
						   type: "POST",
						   url: "ins_signup",
						   data: "title="+title,
						   success: function(data){
							   if(data=="success"){
								   alert('报名成功');
								   location.href='part_act.jsp';
						       	}else{
						       		alert('报名失败');
						       		location.href='moreInpubActi.jsp';
						       	}
						   }
						});
					return false;
			});
		});
	</script>



</head>
<body> 
<!--header-->
	<div class="banner-in">
		<div class="container">
			<h6>首页 / <span>公益活动详细信息</span></h6>
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
					<li><a href="index_user.jsp" class="scroll">首页
					</a></li>
					<li class="active"><a href="pub_activities" class="scroll">公益活动</a></li>
					<li><a href="#" class="scroll">捐助活动</a></li>
					<li><a href="part_act.jsp" class="scroll">已报名公益活动</a></li>
					<li><a href="user_center.jsp" class="scroll">用户中心</a></li>
					<li><a href="javascript:void(0)" onclick="logOut();"  class="scroll">注销</a></li>
				</ul>
					<!--script-->
				<script>
					$("span.menu").click(function(){
						$(".top-nav ul").slideToggle(500, function(){
						});
					});
			</script>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	<!--content-->
	<div class="content">
		<div class="container">
			<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" method="post">
				<div class="form-inner">
			        </div>
			         <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">标题</label>
			            <input type="text" class="form-control" id="title" placeholder="" value="${selAllActivity.title }" disabled="disabled">		            		            		            
			          </div>              
			        </div>	
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">公布日期</label>
			            <input type="text" class="form-control" id="pubdate" placeholder="" value="${selAllActivity.pubdate }" disabled="disabled">		            		            		            
			          </div>              
			        </div>		
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">内容</label>
			            <input type="text" class="form-control" id="content" placeholder="" disabled="disabled" value="${selAllActivity.content }">		            		            		            
			          </div>              
			        </div>	
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">图片</label>
			            <img alt="" src="${selAllActivity.picture }">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">活动时间</label>
			            <input type="text" class="form-control" id="activitydata" disabled="disabled" placeholder="" value="${selAllActivity.activitydate }">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">联系方式</label>
			            <input type="text" class="form-control" id="tel" placeholder="" disabled="disabled" value="${selAllActivity.tel }">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">发布人</label>
			            <input type="text" class="form-control" id="pubusername" disabled="disabled" placeholder="" value="${selAllActivity.pubusername }">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" id="more_insact" value="确定报名" class="btn btn-info">
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
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