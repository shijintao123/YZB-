package com.yzb.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yzb.mapper.DonationMappper;
import com.yzb.pojo.Donation;
import com.yzb.service.DonationService;

@Service
public class DonationServiceImpl implements DonationService {

	@Resource
	private DonationMappper donationMappper;
	
	@Override
	public List<Donation> selALLdonation() {
		return donationMappper.selALLdonation();
	}

	@Override
	public Donation selDonationById(int id) {
		return donationMappper.selDonationById(id);
	}

}
