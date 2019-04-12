package com.yzb.service;


import java.util.List;

import com.yzb.pojo.Activity;
import com.yzb.pojo.EasyUIDatagrid;
import com.yzb.pojo.User;

public interface UserService {
	/*
	 * 查询用户
	 */
	User selUserByUsername(User user);
	/**
	 * 超级管理员登陆
	 * @param name
	 * @return
	 */
	User selUserByCode(String name);
	/*
	 * 新增普通用户
	 */
	int insUser(User user);
	
	/*
	 * 修改用户
	 */
	int uptUser(User user);
	
	/*
	 * 查询所有公益活动
	 */
	List<Activity> selAllActivity();
	
	/*
	 * 查询某个公益活动棘突信息
	 */
	Activity selActById(int id);
	
	/*
	 * 根据标题获取活动时间
	 */
	Activity selActByTitle(String title);
	
	
	/*
	 * 分页查找
	 */
	EasyUIDatagrid showRole(int pageSize,int pageNumber);
	
	/*
	 * 删除用户
	 */
	int del_user(int sid);
	/**
	 * 修改用户权限
	 * @param code
	 * @param id
	 * @return
	 */
	int updateRole(int code, int id);
}
