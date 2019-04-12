package com.yzb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yzb.pojo.Activity;
import com.yzb.pojo.User;

public interface UserMapper {
	//普通用户登录
	@Select("select * from user where username=#{username}")
	User selUserByUsername(User user);
	//管理员用户登陆
	@Select("select *from user where username=#{username} and code=1")
	User selUserByCode(String username);
	
	//用户注册
	@Insert("insert into user values (default,#{sid},#{username},#{password},#{college},#{sclass},#{polstatus},#{tel},#{resdate},0)")
	int insUser(User user);
	
	//修改用户信息
	@Update("update user set username=#{username},password=#{password},college=#{college},sclass=#{sclass},polstatus=#{polstatus} ,tel=#{tel} where sid=#{sid}")
	int uptUser(User user);
	
	//查询所有公益活动
	@Select("select * from activity")
	List<Activity> selAllActivity();
	
	//查询某个公益活动的具体信息
	@Select("select * from activity where id=#{id}")
	Activity selActById(int id);
	
	//根据标题获取活动时间
	@Select("select * from activity where title=#{title}")
	Activity selActByTitle(String title);
	
	//分页查找
	@Select("select * from user limit #{0},#{1}")
	List<User> selByPage(int pageStart,int pageSize);
	//分页计数
	@Select("select count(*) from user")
	int selCount();
	
	//删除用户
	@Delete("delete from user where id = #{0}")
	int del_user(int id);
	
	@Update("update user set code =#{0} where id=#{1} ")
	int updRole(int i, int id);
}
