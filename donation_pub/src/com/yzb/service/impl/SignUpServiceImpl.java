package com.yzb.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yzb.mapper.SignUpMapper;
import com.yzb.pojo.SignUp;
import com.yzb.service.SignUpService;

@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Resource
	private SignUpMapper signUpMapper;

	@Override
	public int insSignUp(SignUp signUp) {
		return signUpMapper.insSignUp(signUp);
	}

	@Override
	public List<SignUp> selSignUpByUsername(String sid) {
		return signUpMapper.selSignUpByUsername(sid);
	}

}
