package com.yzb.service;

import java.util.List;

import com.yzb.pojo.Donation;

public interface DonationService {
	List<Donation> selALLdonation();
	
	Donation selDonationById(int id);
	
	
}