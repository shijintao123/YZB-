package com.yzb.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yzb.pojo.EasyUIDatagrid;
import com.yzb.pojo.PublicBen;
import com.yzb.pojo.User;
import com.yzb.service.PublicBenService;

@Controller
public class PublicBenController {
	@Autowired
	private PublicBenService pbs;
	
	@RequestMapping("addBen")
	@ResponseBody
	public String  addPublicBen(PublicBen p,MultipartFile file,HttpServletRequest req) throws IOException{
		/**
		 * if(file.getOriginalFilename()==""){
			return s;
		}else{
			
			try {
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
				s.setFileName(fileName);
				} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return s;
		}
		 */
		//生成文件名
		String fileName = UUID.randomUUID().toString()+
				file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String path = req.getServletContext().getRealPath("img")+"/"+fileName;
		FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
		p.setPic(fileName);
		User user = (User) req.getSession().getAttribute("user");
		p.setId(user.getId());
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
	@RequestMapping("updateCode")
	@ResponseBody
	public String  updatePublicBen(int pid){
		int row = pbs.updatePublicBen(pid);
		if(row>0){
			return "1";
		}else{
			return "0";
		}
	}
	@RequestMapping("updateBen")
	@ResponseBody
	public String  updatePublicBen(PublicBen ben){
		int row = pbs.updatePublicAll(ben);
		if(row>0){
			return "1";
		}else{
			return "0";
		}
	}
}
