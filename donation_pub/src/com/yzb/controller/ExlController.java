package com.yzb.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yzb.pojo.Activity;
import com.yzb.pojo.ImportExl;
import com.yzb.pojo.SignUp;
import com.yzb.pojo.User;
import com.yzb.service.SignUpService;
import com.yzb.service.UserService;
import com.yzb.util.ExportExcel;

@Controller
public class ExlController {

	@Resource
	private UserService userServiceImpl;

	@Resource
	private SignUpService signUpServiceImpl;

	// 显示到前台的表格数据
	@RequestMapping("get_exl")
	@ResponseBody
	public String get_exltable(HttpSession session, HttpServletRequest req) {
		User user = (User) session.getAttribute("user");
		List<SignUp> signUp = signUpServiceImpl.selSignUpByUsername(user.getSid());
		// 输出exl表格数据设值
		List<ImportExl> importExl = new ArrayList<>();
		for (int i = 0; i < signUp.size(); i++) {
			ImportExl exl = new ImportExl();
			Activity selActByTitle = userServiceImpl.selActByTitle(signUp.get(i).getActtitle());
			exl.setActivitydate(selActByTitle.getPubdate());
			exl.setCollege_class(user.getCollege() + user.getSclass());
			exl.setPubusername(selActByTitle.getPubusername());
			exl.setTitle(signUp.get(i).getActtitle());
			exl.setUsername(user.getUsername());
			exl.setUsername_tel(user.getTel());
			importExl.add(exl);
		}
		if (importExl == null) {
			return "error";
		} else {
			session.setAttribute("importExl", importExl);
			return "success";
		}
	}

	@RequestMapping("output_exl")
	@ResponseBody
	public String output_exl(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		List<ImportExl> importExl = (List<ImportExl>) session.getAttribute("importExl");
		
		String title = "活动报名表";
        String[] rowsName = new String[]{"序号","活动名称", "发布人", "活动时间", "报名者", "报名者联系方式","报名者学校、班级"};
        List<Object[]>  dataList = new ArrayList<Object[]>();
        Object[] objs = null;
        for (int i = 0; i < importExl.size(); i++) {
        	ImportExl man = importExl.get(i);
            objs = new Object[rowsName.length];
            objs[0] = i;
            objs[1] = man.getTitle();
            objs[2] = man.getPubusername();
            objs[3] = man.getActivitydate();
            objs[4] = man.getUsername();
            objs[5] = man.getUsername_tel();
            objs[6] = man.getCollege_class();
            dataList.add(objs);
        }
        ExportExcel ex = new ExportExcel(title, rowsName, dataList,response);
        try {
			ex.export();
			return "success";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "error";
		}
	}

}
