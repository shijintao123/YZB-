<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
$(function(){
	$('#user_table').datagrid({    
	    url:'showRole',    
	    columns:[[    
	        {field:'id',title:'编号',width:100,hidden:true},    
	        {field:'username',title:'姓名',width:100}, 
	        {field:'college',title:'学校',width:100},   
	        {field:'tel',title:'联系电话',width:100},   
	        {field:'sclass',title:'班级',width:100},   
	        {field:'sid',title:'学号',width:100,align:'right'},    
	        {field:'remark',title:'备注',width:100,align:'right'},
	    ]],
	    pagination:true,
	    pageList:[6,12,18],
	    fitColumns:true,
	    striped:true,
	    rownumbers:true,
	    toolbar: [{
			iconCls: 'icon-remove',
			text:'删除',
			handler: function(){
				if($("#user_table").datagrid("getSelections").length==1){
					//alert($("#user_table").datagrid("getSelected").sid);//获取用户学号
				/* 	$.ajax({
	                      Type: 'Get',
	                      url: 'del_user?sid=' + $("#user_table").datagrid("getSelected").sid,
	                      success: function (data) {
		                     	/* $.messager.alert("温馨提示","删除成功");
		                      	$('#user_table').datagrid('reload');
		                        console.log(data); 
		                        alert(data)
	                      },
	                      error: function (error) {
	                          $.messager.alert("温馨提示", "删除失败");
	                      }
	                  }); */
					$.ajax({
						   type: "POST",
						   url: "del_user",
						   data: "sid="+$("#user_table").datagrid("getSelected").sid,
						   success: function(data){
						       	$.messager.alert("温馨提示", "删除失败");
						   },
						error: function (error) {
							$('#user_table').datagrid('reload');
		                    $.messager.alert("温馨提示", "删除成功");
	                    }
						});
				}else{
					$.messager.alert("系统信息","请选择<b style='color:red;'>一行</b>")
				}
			}
		}
	    ]

	});
})
</script>
<table id="user_table"></table> 
</body>
</html>