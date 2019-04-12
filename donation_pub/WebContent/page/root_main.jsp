<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员后台界面</title>
	<!--引入EasyUI的CSS的核心文件-->
		<link href="js/sweetalert/sweetalert2.min.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="js/easyui/themes/bootstrap/easyui.css"/>
		<!--引入图标样式CSS文件-->
		<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css"/>
		<!--引入Jquery的核心JS文件-->
		<script type="text/javascript" src="js/easyui/jquery.min.js" ></script>
		<!--引入Jquery EasyUI的核心js文件-->
		<script type="text/javascript" src="js/jquery-1.7.2.js" ></script>
		<script type="text/javascript" src="js/easyui/jquery.easyui.min.js" ></script>
		<!--引入信息本地化的js文件-->
		<script type="text/javascript" src="js/easyui/locale/easyui-lang-zh_CN.js" ></script>
		<script src="js/sweetalert/sweetalert2.min.js"></script>
		<!-- 配置文件 -->
		<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
		<!-- 编辑器源码文件 -->
		<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
  </head>
	<style>
  	a{
  		background-color:red;
  	}
  </style>
<body class="easyui-layout">   
	    <div data-options="region:'north'" style="height:100px;">
	    	<div style="background:gray;text-align:center;width:100%;height:100%;"><br><div style="font-size:25px">捐助平台 </div><br><div>您好：**管理员，欢迎登陆系统!&nbsp;  <a href="#" class="easyui-linkbutton" style="background:skyblue">用户注销</a></div></div>   
	    </div>   
	    <div data-options="region:'south'" style="height:60px;">
	    	<div style="text-align: center;color: gray;margin-top: 10px;" >
	    	<br>
	    		2019-1-1----2019-4-5
	    	</div>
	    </div>   
	    <div data-options="region:'west',title:'菜单导航栏',split:false,iconCls:'icon-home'" style="width:180px;">
	    	<div id="aa" class="easyui-accordion" fit=true>    
			    <div title="用户管理" data-options="iconCls:'icon-fwgl'">  
			    	<a href="javascript:openTabs('用户管理','icon-jwjl')" onclick="openTabs('用户管理','icon-jwjl')" class="easyui-linkbutton" data-options="iconCls:'icon-jwjl',plain:true" style="margin-left: 25px;margin-top: 10px;">用户管理</a>
			    </div>   
			    <div title="公益管理" data-options="iconCls:'icon-khgcfx',selected:false">
			    	<a href="javascript:openTabs('新闻管理','icon-khgl')"  onclick="openTabs('新闻管理','icon-khgl')" class="easyui-linkbutton" data-options="iconCls:'icon-khgl',plain:true" style="margin-left: 25px;">新闻管理</a>   
			    	<a href="javascript:openTabs('公益管理','icon-khfwfx')"  onclick="openTabs('公益管理','icon-khfwfx')" class="easyui-linkbutton" data-options="iconCls:'icon-khfwfx',plain:true" style="margin-left: 25px;">公益管理</a>   
			    </div>   
			    <div title="捐助管理" data-options="iconCls:'icon-item',selected:false">
			    	<a href="javascript:openTabs('捐助管理','icon-tjbb')"  onclick="openTabs('捐助管理','icon-tjbb')" class="easyui-linkbutton" data-options="iconCls:'icon-tjbb',plain:true" style="margin-left: 25px;">捐助管理</a>   
			    	<a href="javascript:openTabs('捐助表管理','icon-fwgd')"  onclick="openTabs('捐助表管理','icon-fwgd')" class="easyui-linkbutton" data-options="iconCls:'icon-fwgd',plain:true" style="margin-left: 25px;">捐助表管理</a>   
			    	<a href="javascript:openTabs('留言管理','icon-fwgd')"  onclick="openTabs('留言管理','icon-fwgd')" class="easyui-linkbutton" data-options="iconCls:'icon-fwgd',plain:true" style="margin-left: 25px;">留言管理</a>   
			    </div>   
			</div>  
	    </div>   
	    <div data-options="region:'center'" style="padding:5px;background:#eee;">
	    	<div id="tt" class="easyui-tabs"  data-options="tabPosition:'top',border:true,fit:true">   
			    <div title="用户主页" iconCls="icon-home" style="background-size: 600px 500px; background-repeat: repeat;" >   
			         <h2 align="center">欢迎来到后台管理系统！！！</h2>  
			    </div>   
			</div>
	    </div>   
	</body> 
	<script>
		function openTabs(title,icon){
			var flag=$("#tt").tabs('exists',title);
			if(flag){
				$("#tt").tabs("select",title);
			}else{
				if(title=='用户管理'){
					console.log(title=='用户管理');
					$("#tt").tabs('add',{
						title:title,
						selected:true,
						closable:true,
						iconCls:icon,
						href:'page/user/selAllUser.jsp',
						fit:true
					});
				}else if(title=='公益管理'){
					console.log(title=='公益管理');
					$("#tt").tabs('add',{
						title:title,
						selected:true,
						closable:true,
						iconCls:icon,
						href:'page/publicBen/selAllPublicBen.jsp',
						fit:true
					});
				}else if(title=='职位管理'){
					console.log(title=='职位管理');
					$("#tt").tabs('add',{
						title:title,
						selected:true,
						closable:true,
						iconCls:icon,
						href:'page/root/selAllPosition.jsp',
						fit:true
					});
				}else if(title=='公告管理'){
					$("#tt").tabs('add',{
						title:title,
						selected:true,
						closable:true,
						iconCls:icon,
						href:'page/root/.jsp',
						fit:true
					});
				}else if(title=='文件管理'){
					$("#tt").tabs('add',{
						title:title,
						selected:true,
						closable:true,
						iconCls:icon,
						href:'page/root/selAllFile.jsp',
						fit:true
					});
				}else if(title=='留言管理'){
					$("#tt").tabs('add',{
						title:title,
						selected:true,
						closable:true,
						iconCls:icon,
						href:'page/root/.jsp',
						fit:true
					});
				}
				
			}
		}
	</script>
</html>
