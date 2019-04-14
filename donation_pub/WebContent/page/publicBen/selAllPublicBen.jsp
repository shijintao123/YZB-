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
		var date=myDate.getFullYear()+"-"+myDate.getMonth()+"-"+myDate.getDate(); 
		return date;
	}
</script>
<script type="text/javascript">
		 	function updateBen(){
					//弹出窗口
				$('#dialog').dialog({    
				    title: '修改',    
				    width: 400,    
				    height: 400,    
				    closed: false,    
				    cache: false,    
				    href: '',    
				    modal: true,
				    onLoad:function(){
						//将数据加载到修改框里				    
				    	$("#name").val($("#dg").datagrid("getSelected").name);
				    	$("#edcation").val($("#dg").datagrid("getSelected").edcation);
				    	$("#salary").val($("#dg").datagrid("getSelected").salary);
				    	$("#category").val($("#dg").datagrid("getSelected").category);
				    	$("#statement").val($("#dg").datagrid("getSelected").statement);
				    	$("#require").val($("#dg").datagrid("getSelected").require);
				    	$("#id").val($("#dg").datagrid("getSelected").id);
				    	$("#eid").val($("#dg").datagrid("getSelected").eid);
				    }
				    });
			}
		function addBen(){
				//弹出窗口
			$('#dialog').dialog({    
			    title: '修改',    
			    width: 400,    
			    height: 400,    
			    closed: false,    
			    cache: false,    
			    href: "page/publicBen/addBean.jsp",    
			    modal: true,
			    onLoad:function(){
					//将数据加载到修改框里				    
			    	$("#name").val($("#dg").datagrid("getSelected").name);
			    	$("#edcation").val($("#dg").datagrid("getSelected").edcation);
			    	$("#salary").val($("#dg").datagrid("getSelected").salary);
			    	$("#category").val($("#dg").datagrid("getSelected").category);
			    	$("#statement").val($("#dg").datagrid("getSelected").statement);
			    	$("#require").val($("#dg").datagrid("getSelected").require);
			    	$("#id").val($("#dg").datagrid("getSelected").id);
			    	$("#eid").val($("#dg").datagrid("getSelected").eid);
			    }
			    });
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