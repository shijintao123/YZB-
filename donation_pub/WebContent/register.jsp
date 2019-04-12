<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Create Account</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">
	<h1 class="margin-bottom-15">创建用户</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" method="post">
				<div class="form-inner">
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">姓名</label>
			            <input type="text" class="form-control" id="username" placeholder="">		            		            		            
			          </div>              
			        </div>		
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">学号</label>
			            <input type="text" class="form-control" id="sid" placeholder="">		            		            		            
			          </div>              
			        </div>	
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">输入密码</label>
			            <input type="password" class="form-control" id="password" placeholder="">
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">确认输入密码</label>
			            <input type="password" class="form-control" id="password_confirm" placeholder="">
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">学院</label>
			            <input type="text" class="form-control" id="college" placeholder="">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">班级</label>
			            <input type="text" class="form-control" id="sclass" placeholder="">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">政治面貌</label>
			            <input type="text" class="form-control" id="polstatus" placeholder="">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="username" class="control-label">联系方式</label>
			            <input type="text" class="form-control" id="tel" placeholder="">		            		            		            
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" id="reg_btn" value="确定" class="btn btn-info">
			            <a href="login_user.jsp" class="pull-right">Login</a>
			          </div>
			        </div>	
				</div>				    	
		      </form>		      
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#reg_btn").click(function(){
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
						   url: "insert_user",
						   data: "username="+username+"&password="+password+"&sid="+sid+"&college="
						   +college+"&sclass="+sclass+"&polstatus="+polstatus+"&tel="+tel,
						   success: function(data){
							   if(data=="success"){
								   location.href='login_user.jsp';
						       	}else{
						       		alert('登录失败');
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
</body>
</html>