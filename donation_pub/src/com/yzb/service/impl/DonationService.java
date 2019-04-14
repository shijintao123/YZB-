package com.yzb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sjt.base.BaseService;
import com.yzb.mapper.DonationMapper;

@Service
public class DonationService extends  BaseService {
	@Autowired
	private DonationMapper donationMapper;

}
