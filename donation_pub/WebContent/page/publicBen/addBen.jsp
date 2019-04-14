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
	function addSubmit(){
		var title=$("#title1").val();
		var pic =$("#pic1").val();
		var content =$("#content1").val();
		alert(title);
		if(isEmpty(title)||isEmpty(content)||""==pic){
			$("#errorMsg").html("不能有信息为空！");
			return ;
		}
		var formData = new FormData();  
		console.log(formData);
   		formData.append("title",title);  
   		formData.append("content",content);  
   		formData.append("file",$('#pic1')[0].files[0]); 
		$.ajax({
			url:"addBen",
			type:"post",
			dataType:"json",
			data:formData,
	   		async:false,
	   		processData : false,   
	   		contentType : false,  
			success:function(result){
				$("#dialog").dialog('close');
				$('#dg1').datagrid('reload');
				if(result==1){
					$.messager.show({
						title:'系统提示',
						msg: "添加成功" ,
						timeout:2000,
						showType:'slide'
					});
		 		 }else{
		 			$.messager.show({
						title:'系统提示',
						msg: "添加失败" ,
						timeout:2000,
						showType:'slide'
					});
		 		 }
			}
		});
	}
	/*
	 * 判断是否为空
	*/
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

</script>
		<table align="center">
			<tr width="400px;">
				<td>标题</td>
				<td><input type="text" id="title1"></td>
			</tr>
			<tr width="400px;">
				<td>展示图片</td>
				<td><input type="file" id="pic1"></td>
			</tr>
				<tr width="400px;">
				<td>内容</td>
				<td><input type="text" id="content1"></td>
			</tr>
				<tr width="400px;" >
				<td colspan="2"><button type="button" onclick="addSubmit();">提交</button></td>
			</tr>
			</tr>
				<tr width="400px;" >
				<td colspan="2"><span id="errorMsg" style="color:red"></span></td>
			</tr>
		</table>
	</body>
</html>