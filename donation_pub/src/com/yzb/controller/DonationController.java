package com.yzb.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yzb.pojo.Donation;
import com.yzb.service.DonationService;

@Controller
public class DonationController {
	@Resource
	private DonationService donationServiceImpl;
	
	
	@RequestMapping("getdonationtable")
//	@ResponseBody
	public String getdonationtable(HttpSession session) {
		List<Donation> ldonationAll = donationServiceImpl.selALLdonation();
		if(ldonationAll!=null) {
			//公益图片pub_images路径
			//String path = req.getServletContext().getRealPath("pub_images")+"/";
			//System.out.println(path);
			session.setAttribute("ldonationAll", ldonationAll);
			return "donation_activities.jsp";
		}else {
			return "error";
		}
	}
	
	
	@RequestMapping("moredonation_activities")
	public String moredonation_activities(String id,HttpServletRequest request) {
		Donation selDonationById = donationServiceImpl.selDonationById(Integer.parseInt(id));
		request.setAttribute("selDonationById", selDonationById);
		return "moredonationInformation.jsp";
	}
}
