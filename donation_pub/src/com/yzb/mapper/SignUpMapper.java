package com.yzb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.yzb.pojo.Donation;
import com.yzb.pojo.SignUp;

public interface SignUpMapper {
	//管理员表 新建一张表
	//新增公益活动报名
	@Insert("insert into signup values (default,#{acttitle},#{sid},#{username},#{college},#{sclass},#{polstatus},#{tel},#{enrolldate})")
	int insSignUp(SignUp signUp);
	
	//挑选出某人的活动报名信息
	@Select("select * from signup where sid = #{sid}")
	List<SignUp> selSignUpByUsername(String sid);
	
}
