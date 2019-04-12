<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>基于JSP的校园爱心捐助及公益活动11</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="js/sweetalert/sweetalert2.min.js"></script>
	<script type="text/javascript" src="js/my.js"></script>
	<link href="js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css" />
	
</head>
 <script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		$("#user_submit").click(function(){
			var username = $("#username").val();
			var password = $("#password").val();
			if(username==""){
				$("#mes").css("color","red");
	       		$("#mes").html("用户名不能为空");
				return ;
			}
			if(password==""){
				$("#mes").css("color","red");
	       		$("#mes").html("密码不能为空");
				return ;
			}
			$.ajax({
				   type: "POST",
				   url: "codeLogin",
				   data: {
					   "name":$("#username").val(),
					   "password":$("#password").val()
				   },
				   success: function(data){
					   if(data=="success"){
						   location.href='page/root_main.jsp';
				       	}else{
				       		//alert('登录失败');
				       		$("#mes").css("color","red");
				       		$("#mes").html("用户名或者密码不正确");
				       	}
				   }
				});
		return false;
		});
	});
</script>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">管理员登录</h1>
			<form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" method="post">				
		        <div class="form-group">
		          <div class="col-xs-12">		            
		            <div class="control-wrapper">
		            	<label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
		            	<input type="text" class="form-control" id="username" placeholder="Username">
		            </div>		            	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		            	<label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
		            	<input type="password" class="form-control" id="password" placeholder="Password">
		            </div>
		          </div>
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		          	<div class="control-wrapper">
		          		<input type="button" id="user_submit" value="登录" class="btn btn-info">
		          		<span id="mes" style="float:right"></span>
		          	</div>
		          </div>
		        </div>
		        <hr>
		        <div class="form-group">
		        	<div class="col-md-12">
		        		<label><a href="login_user.jsp" style="cursor:pointer">用户登录</a></label>
		        		<div class="inline-block">
		        		</div>		        		
		        	</div>
		        </div>
		      </form>
		      <div class="text-center">
		      	<a href="register.jsp" class="templatemo-create-new">Create new account <i class="fa fa-arrow-circle-o-right"></i></a>	
		      </div>
		</div>
	</div>
</body>
</html>