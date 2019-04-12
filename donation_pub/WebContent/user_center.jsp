<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户中心</title>
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
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/sweetalert/sweetalert2.min.js"></script>
<script type="text/javascript" src="js/my.js"></script>
<link href="js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
		$(function(){
			$("#usercenter_btn").click(function(){
				var password = $("#password").val();
				var password_confirm = $("#password_confirm").val();
				if(password_confirm==(password)){
					var sid = $("#sid").val();
					var username = $("#username").val();
					var college = $("#college").val();
					var sclass = $("#sclass").val();
					var polstatus = $("#polstatus").val();
					var tel = $("#tel").val();
					$.ajax({
						   type: "POST",
						   url: "xiugai_user",
						   data: "username="+username+"&password="+password+"&sid="+sid+"&college="
						   +college+"&sclass="+sclass+"&polstatus="+polstatus+"&tel="+tel,
						   success: function(data){
							   if(data=="success"){
								   location.href='user_center.jsp';
						       	}else{
						       		alert('修改失败');
						       	}
						   }
						});
				}else {
					alert('密码不一致，请重新输入！');
				}
					return false;
			});
		});
	</script>
</head>
<body> 
<!--header-->
	<div class="banner-in">
		<div class="container">
			<h6>首页 / <span>用户中心</span></h6>
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
			            <label for="username" class="control-label">姓名</label>
			            <input type="text" class="form-control" id="username" placeholder="" value="${user.username }">		            		            		            
			          </div>              
			        </div>		
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">学号</label>
			            <input type="text" class="form-control" id="sid" placeholder="" disabled="disabled" value="${user.sid }">		            		            		            
			          </div>              
			        </div>	
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">密码</label>
			            <input type="password" class="form-control" id="password" placeholder="" value="${user.password }">
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">确认修改密码</label>
			            <input type="password" class="form-control" id="password_confirm" placeholder="">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">学院</label>
			            <input type="text" class="form-control" id="college" placeholder="" value="${user.college }">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">班级</label>
			            <input type="text" class="form-control" id="sclass" placeholder="" value="${user.sclass }">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">政治面貌</label>
			            <input type="text" class="form-control" id="polstatus" placeholder="" value="${user.polstatus }">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">联系方式</label>
			            <input type="text" class="form-control" id="tel" placeholder="" value="${user.tel }">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" id="usercenter_btn" value="确定修改" class="btn btn-info">
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