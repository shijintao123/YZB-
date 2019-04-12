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
<script type="text/javascript">
	var ue;
	// 预加载
	$(function(){
		// 实例化编辑器
	   ue  = UE.getEditor('noteContent'); // noteContent是容器id属性值
	});
</script>
	<div class="col-md-9">
		<div class="data_list">
			<div class="data_list_title">
			<div class="container-fluid">
				<div class="container-fluid">
			  <div class="row" style="padding-top: 20px;">
				<div class="col-md-12">
					<!-- 判断是否有类型记录，没有显示提示问题  -->
					<c:if test="${empty typeList }">
						<h2>请先添加类型！</h2>
						<h3><a href="typeServlet?actionName=list">添加类型</a></h3>
					</c:if>
					<c:if test="${!empty typeList }">
						<form class="form-horizontal" method="post" action="indentServlet">
						   <div class="form-group">
							<label for="typeId" class="col-sm-2 control-label">类别:</label>
						  </div>
						  <div class="form-group">
							<input type="hidden" name="noteId" value="${noteInfo.noteId }">
							<input type="hidden" name="actionName" value="addOrUpdate">
							<label for="title" class="col-sm-2 control-label">标题:</label>
							<div class="col-sm-8">
							  <input class="form-control" name="title" id="title" placeholder="" value="${noteInfo.title }">
							</div>
						   </div>
						  <div class="form-group">
							<input type="hidden" name="noteId" value="${noteInfo.noteId }">
						  <!-- 	<input type="hidden" name="actionName" value="addOrUpdate"> -->
							<label for="price" class="col-sm-2 control-label">价格:</label>
							<div class="col-sm-8">
							  <input class="form-control" name="price" id="price" placeholder="" value="${noteInfo.price }">
							</div>
						   </div>
						  
						  <div class="form-group">
							<label for="content" class="col-sm-2 control-label">内容:</label>
							<div class="col-sm-8">
								<textarea id="noteContent" name="content">${noteInfo.content }</textarea>
							</div>
						  </div>			 
						  <div class="form-group">
							<div class="col-sm-offset-6 col-sm-4">
							  <input type="submit" class="btn btn-primary" onclick="return saveNote();" value="保存">
							</div>
						  </div>
						</form>
					</c:if>
				</div>
			  </div>
			</div>	
		</div>		
		</div>
	</div>		
	</body>
</html>