<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<script type="text/javascript">
	$('#dg').datagrid({
		toolbar:"#tb",
	    url:'showRole',    
	    columns:[[    
			{field:'id',title:'用户Id',width:100,hidden:true},          
	        {field:'sid',title:'学生学号',width:100},    
	        {field:'username',title:'用户名',width:100},    
	        {field:'password',title:'密码',width:100},    
	        {field:'college',title:'学院',width:100},    
	        {field:'sclass',title:'专业',width:100},    
	        {field:'polstatus',title:'政治面貌',width:100},    
	        {field:'tel',title:'联系电话',width:100},    
	        {field:'resdate',title:'注册时间',width:100},    
	        {field:'tel',title:'联系电话',width:100},    
	        {field:'code',title:'状态',width:100,
	        	formatter: function(value,row,index){
	        		return value==1?"管理员":"普通用户";
	        	}	
	        },    
	    ]],    
		fitColumns:true,
		pageList:[10,20,30,40,50],
		pagination:true,
	});  
	//格式化日期
	function dateFormat(fmt){
		var myDate=new Date(fmt);
		var date=myDate.getFullYear()+"-"+myDate.getMonth()+"-"+myDate.getDate(); 
		return date;
	}
</script>
<script type="text/javascript">
			function updateRole(){
				 if($("#dg").datagrid("getSelections").length==1){
					 $.messager.confirm('确认','您确认想要修改用户权限吗？',function(r){    
						    if (r){    
							 $.ajax({
								 url:"updateRole",
							 	 data:{
							 		 "id":$("#dg").datagrid("getSelected").id,
							 		 "code":$("#dg"	).datagrid("getSelected").code,
							 	 },
							 	 dataType:"json",
							 	 success:function(result){
							 		 if(result==1){
							 			$('#dg').datagrid('reload');
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
							 	 },
							 });
						}
					 });
				 }else{
					 $.messager.alert("系统信息","请选择一行")
				 }
			}
			function delUser(){
				alert("我就打");
				console.log($("#dg").datagrid("getSelected").id);
				 if($("#dg").datagrid("getSelections").length==1){
					 $.messager.confirm('确认','您确认想要删除该用户？',function(r){    
						    if (r){    
							 $.ajax({
								 url:"del_user",
							 	 data:{
							 		 "sid":$("#dg").datagrid("getSelected").id,
							 	 },
							 	 dataType:"json",
							 	 success:function(result){
							 		 console.log(result);
							 		 if(result=="1"){
							 			$('#dg').datagrid('reload');
						    			$.messager.show({
											title:'系统提示',
											msg: "删除成功" ,
											timeout:2000,
											showType:'slide'
										});
							 		 }else{
							 			$.messager.show({
											title:'系统提示',
											msg: "删除失败" ,
											timeout:2000,
											showType:'slide'
										});
							 		 }
							 	 },
							 });
						}
					 });
				 }else{
					 $.messager.alert("系统信息","请选择一行")
				 }
			}
		</script>
		<table id="dg"></table>  
		<div id="tb">
			<button  class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="updateRole();">修改权限</button>
			<button  class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="delUser();">删除用户</button>
		</div>
	</body>
</html>