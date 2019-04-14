<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<!--引入EasyUI的CSS的核心文件-->
		<link rel="stylesheet" type="text/css" href="statics/easyui/themes/bootstrap/easyui.css"/>
		<!--引入图标样式CSS文件-->
		<link rel="stylesheet" type="text/css" href="statics/easyui/themes/icon.css"/>
		<script type="text/javascript" src="statics/js/jquery-1.11.3.js"></script>
		<!--引入Jquery的核心JS文件-->
		<script type="text/javascript" src="statics/easyui/jquery.min.js" ></script>
		<!--引入Jquery EasyUI的核心js文件-->
		<script type="text/javascript" src="statics/easyui/jquery.easyui.min.js" ></script>
		<!--引入信息本地化的js文件-->
</head>
<body>
<script>
/*
 * 判断是否为空
*/
	
	function updateSubmit(){
		function isEmpty(str){
			if(str==null || str.trim()==""){
				return true;
			}
			return false;
		}
		function isNotEmpty(str){
			if(str==null || str.trim()==""){
				return false;
			}
			return true;
		}
		var title1=$("#title2").val();
		var content1 =$("#content2").val();
		console.log(title1);
		console.log(isEmpty(title1));
		console.log(isEmpty(content1));
		if(isEmpty(title1)||isEmpty(content1)){
			$("#errorMsg").html("不能有信息为空！");
			return ;
		}
		$.ajax({
			url:"updateBen",
			type:"post",
			dataType:"json",
			data:{
				"title":title1,
				"content":content1,
				"pid":$("#pid").val()
			},
			success:function(result){
				$("#dialog").dialog('close');
				if(result==1){
					$.messager.show({
						title:'系统提示',
						msg: "修改成功" ,
						timeout:2000,
						showType:'slide'
					});
		 		 }else{
		 			$.messager.show({
						title:'系统提示',
						msg: "修改失败" ,
						timeout:2000,
						showType:'slide'
					});
		 		 }
			}
		});
	}
	

</script>
		<table align="center">
			<tr width="400px;">
				<td><input type="hidden" id="pid"></td>
			</tr>
			<tr width="400px;">
				<td>标题</td>
				<td><input type="text" id="title2"></td>
			</tr>
				<tr width="400px;">
				<td>内容</td>
				<td><input type="text" id="content2"></td>
			</tr>
				<tr width="400px;" >
				<td colspan="2"><button type="button" onclick="updateSubmit();">提交</button></td>
			</tr>
			</tr>
				<tr width="400px;" >
				<td colspan="2"><span id="errorMsg" style="color:red"></span></td>
			</tr>
		</table>
	</body>
</html>