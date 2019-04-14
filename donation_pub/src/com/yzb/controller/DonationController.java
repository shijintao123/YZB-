package com.yzb.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.yzb.service.impl.DonationService;

@Controller
public class DonationController {
	@Resource
	private DonationService donationService;

/*	public String test01(){
		//return donationServiceImpl.;
	}*/
	
	/*@RequestMapping("getdonationtable")
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
	}*/
}
