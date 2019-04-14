package com.yzb.service;

import java.util.List;

import com.yzb.pojo.SignUp;

public interface SignUpService {
	/*
	 * 新增公益活动报名
	 */
	int insSignUp(SignUp signUp);
	/*
	 * 挑选某人报名活动的信息
	 */
	List<SignUp> selSignUpByUsername(String sid);
}
