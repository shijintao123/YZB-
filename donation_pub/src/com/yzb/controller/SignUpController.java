package com.yzb.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yzb.pojo.SignUp;
import com.yzb.pojo.User;
import com.yzb.service.SignUpService;

@Controller
public class SignUpController {
	
	@Resource
	private SignUpService signUpServiceImpl;
	
	@RequestMapping("ins_signup")
	@ResponseBody
	public String ins_signup(String title,HttpSession session) {
		SignUp signUp = new SignUp();
		signUp.setActtitle(title);
		User user = (User) session.getAttribute("user");
		signUp.setSid(user.getSid());
		signUp.setCollege(user.getCollege());
		signUp.setSclass(user.getSclass());
		signUp.setUsername(user.getUsername());
		signUp.setPolstatus(user.getPolstatus());
		signUp.setTel(user.getTel());
		/*
		 * 获取报名时间
		 */
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		signUp.setEnrolldate(date);
		int index = signUpServiceImpl.insSignUp(signUp);
		if(index > 0) {
			return "success";
		}else {
			return "errer";
		}
	}
}
