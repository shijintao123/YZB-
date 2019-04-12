package com.yzb.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yzb.pojo.Activity;
import com.yzb.pojo.EasyUIDatagrid;
import com.yzb.pojo.User;
import com.yzb.service.UserService;

@Controller
public class UserController {
	
	@Resource
	private UserService userServiceImpl;
	//普通用户
	@RequestMapping("login")
	@ResponseBody
	public String login(User user,HttpSession session) {
		User usertrue = userServiceImpl.selUserByUsername(user);
		if(usertrue!=null) {
			if(user.getPassword().equals(usertrue.getPassword())) {
				session.setAttribute("user", usertrue);
				return "success";
			}else {
				return "error";
			}
		}else {
			return "nullusername";
		}
	}
	//超级用户登陆
	@RequestMapping("codeLogin")
	@ResponseBody
	public String codeLogin(String name,String password,HttpSession session){
		User u = userServiceImpl.selUserByCode(name);
		if(u!=null){
			if(u.getPassword().equals(password)){
				session.setAttribute("user", u);
				return "success";
			}else {
				return "error";
			}
		}else {
			return "notname";
		}
	}
	@RequestMapping("insert_user")
	@ResponseBody
	public String insert_user(User user,HttpSession session) {
		int insUser = userServiceImpl.insUser(user);
		if(insUser>0) {
			return "success";
		}else {
			return "error";
		}
	}
	//用户注销
	@RequestMapping("logOut")
	@ResponseBody
	public String logOut(HttpServletRequest request){
		//用户注销
		request.getSession().invalidate();
		return "1";
	}
	@RequestMapping("xiugai_user")
	@ResponseBody
	public String xiugai_user(User user,HttpSession session) {
		int uptindex = userServiceImpl.uptUser(user);
		if(uptindex > 0) {
			User usertrue = userServiceImpl.selUserByUsername(user);
			if(usertrue!=null) {
				session.setAttribute("user", usertrue);
				return "success";
			}else {
				return "error";
			}
		}else {
			return "error";
		}
	}
	//updateRole
	//修改用户权限
	@RequestMapping("updateRole")
	@ResponseBody
	public String updateRole(int code ,int id){
		int row=userServiceImpl.updateRole(code,id);
		if(row>0){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("pub_activities")
	public String pub_activities(HttpServletRequest req) throws IOException {
		List<Activity> selAllActivity = userServiceImpl.selAllActivity();
		if(selAllActivity!=null) {
			//公益图片pub_images路径
			//String path = req.getServletContext().getRealPath("pub_images")+"/";
			//System.out.println(path);
			req.setAttribute("selAllActivity", selAllActivity);
			return "pub_activities.jsp";
		}else {
			return "error";
		}
	}
	
	@RequestMapping("morepub_activities")
	public String morepub_activities(String id,HttpServletRequest req) throws IOException {
		Activity activity = userServiceImpl.selActById(Integer.parseInt(id));
		req.setAttribute("selAllActivity", activity);
		return "moreInpubActi.jsp";
	}
	
	@RequestMapping("showRole")
	@ResponseBody
	public EasyUIDatagrid showRole(@RequestParam(defaultValue="2")int rows,@RequestParam(defaultValue="1")int page){
		return userServiceImpl.showRole(rows, page);
	}
	
	@RequestMapping("del_user")
	@ResponseBody
	public String del_user(int sid) {
		int index = userServiceImpl.del_user(sid);
		if(index>0) {
			return "1";
		}else {
			return "0";
		}
	}
}
