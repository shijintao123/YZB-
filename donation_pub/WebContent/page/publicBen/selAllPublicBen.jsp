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
	$('#dg1').datagrid({
		toolbar:"#tb2",
	    url:'findAllBen',    
	    columns:[[    
			{field:'pid',title:'Id',width:100,hidden:true},          
	        {field:'title',title:'标题',width:100},    
	        {field:'id',title:'发布者Id',width:100,hidden:true},    
	        {field:'username',title:'发布者名',width:100},    
	        {field:'content',title:'内容',width:100,hidden:true},    
	        {field:'pic',title:'展示图片',width:100,
	        	formatter:function(value,row,index){
	        		console.log(value);
	        		console.log('<img src="img/'+value+'" style="width:40px;height:40px">');
	        		return '<img src="img/'+value+'" style="width:40px;height:40px">';
	        	}	
	        },    
	        {field:'pubDate',title:'发布时间',width:100,
	        	formatter:function(value,row,index){
	        		return dateFormat(value);
	        	}	
	        },    
	        {field:'benCode',title:'状态',width:100,
	        	formatter: function(value,row,index){
	        		return value==0?"未审核":"已审核";
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
		var a=myDate.getMonth()+1;
		var date=myDate.getFullYear()+"-"+a+"-"+myDate.getDate(); 
		return date;
	}
</script>
<script type="text/javascript">
		 	function updateBen(){
		 		if($("#dg1").datagrid("getSelections").length==1){
					//弹出窗口
				$('#dialog').dialog({    
				    title: '修改',    
				    width: 600,    
				    height: 600,    
				    closed: false,    
				    cache: false,    
				    href: 'page/publicBen/updateBen.jsp',    
				    modal: true,
				    onLoad:function(){
						//将数据加载到修改框里				    
				    	$("#title2").val($("#dg1").datagrid("getSelected").title);
				    	$("#pid").val($("#dg1").datagrid("getSelected").pid);
				    	$("#content2").val($("#dg1").datagrid("getSelected").content);
				    }
				    });
		 	 }else{
					
				 $.messager.alert("系统信息","请选择一行")
			 
		 }
			}
		function addBen(){
			
				//弹出窗口
			$('#dialog').dialog({    
			    title: '添加',    
			    width: 600,    
			    height: 600,    
			    closed: false,    
			    cache: false,    
			    href: "page/publicBen/addBen.jsp",    
			    modal: true
			    });
			 
		} 
		function updateCode(){
			 if($("#dg1").datagrid("getSelections").length==1){
				 $.messager.confirm('确认','您确认想要审核吗？',function(r){ 
					    if (r){    
					    	var benCode=$("#dg1").datagrid("getSelected").benCode;
					    	if(benCode==1){
					    		swal("不能重复审核","","error");
					    	}
						 $.ajax({
							 url:"updateCode",
						 	 data:{
						 		 "pid":$("#dg1").datagrid("getSelected").pid
						 	 },
						 	 dataType:"json",
						 	 success:function(result){
						 		 if(result==1){
						 			$('#dg1').datagrid('reload');
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
		</script>
		<div id="dialog"></div>
		<table id="dg1"></table>  
		<div id="tb2">
			<button  class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="addBen();">新增公益</button>
			<button  class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="updateBen();">修改公益</button>
			<button  class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="updateCode();">审核</button>
		</div>
	</body>
</html>