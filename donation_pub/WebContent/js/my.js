function logOut(){
	//使用sweet-alert
		swal({title: "注销提示",   //弹出框的title
		       text: "确定注销吗？",  //弹出框里面的提示文本
		       type: "warning",    //弹出框类型
		       showCancelButton: true, //是否显示取消按钮
		       confirmButtonColor: "#DD6B55",//确定按钮颜色
		       cancelButtonText: "取消",//取消按钮文本
		       confirmButtonText: "是的，确定退出！"//确定按钮上面的文档
		     }).then(function(isConfirm) {
		    	  $.ajax({
		    		 type:"post",
		    		 url:"logOut", 
		    		 dataType:"json",
		    		  success:function(result){
		    			window.location.href="index_user.jsp";
		    		  }
		    	  });
		    }); 
}