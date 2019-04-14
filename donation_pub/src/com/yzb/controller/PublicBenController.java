package com.yzb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yzb.pojo.EasyUIDatagrid;
import com.yzb.pojo.PublicBen;
import com.yzb.service.PublicBenService;

@Controller
public class PublicBenController {
	@Autowired
	private PublicBenService pbs;
	
	@RequestMapping("addBen")
	@ResponseBody
	public String  addPublicBen(PublicBen p){
		int row = pbs.addPublicBen(p);
		if(row>0){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("findAllBen")
	@ResponseBody
	public EasyUIDatagrid findAllBen(@RequestParam(defaultValue="10")int rows,@RequestParam(defaultValue="1")int page){
		return  pbs.findAllBen(rows, page);
	}
}
