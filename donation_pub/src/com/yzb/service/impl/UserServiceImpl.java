package com.yzb.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yzb.mapper.UserMapper;
import com.yzb.pojo.Activity;
import com.yzb.pojo.EasyUIDatagrid;
import com.yzb.pojo.User;
import com.yzb.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;
	
	@Override
	public User selUserByUsername(User user) {
		return userMapper.selUserByUsername(user);
	}

	@Override
	public int insUser(User user) {
		/*
		 * 获取注册时间
		 */
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		user.setResdate(date);
		return userMapper.insUser(user);
	}

	@Override
	public int uptUser(User user) {
		return userMapper.uptUser(user);
	}

	@Override
	public List<Activity> selAllActivity() {
		return userMapper.selAllActivity();
	}

	@Override
	public Activity selActById(int id) {
		return userMapper.selActById(id);
	}

	@Override
	public Activity selActByTitle(String title) {
		return userMapper.selActByTitle(title);
	}

	@Override
	public EasyUIDatagrid showRole(int pageSize, int pageNumber) {
		EasyUIDatagrid datagrid = new EasyUIDatagrid();
		datagrid.setRows(userMapper.selByPage(pageSize*(pageNumber-1), pageSize));
		datagrid.setTotal(userMapper.selCount());
		return datagrid;
	}

	@Override
	public int del_user(int sid) {
		return userMapper.del_user(sid);
	}

	@Override
	public User selUserByCode(String name) {
		return userMapper.selUserByCode(name);
	}
	@Override
	public int  updateRole(int code, int id){
		int row=0;
		if(code==1){
			row=userMapper.updRole(0,id);
		}else{
			row=userMapper.updRole(1,id);
		}
		return row;
	}
}
