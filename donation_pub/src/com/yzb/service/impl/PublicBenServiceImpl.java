package com.yzb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yzb.mapper.PublicBenMapper;
import com.yzb.pojo.EasyUIDatagrid;
import com.yzb.pojo.PublicBen;
import com.yzb.service.PublicBenService;

@Service
public class PublicBenServiceImpl implements PublicBenService{
	//插入一条公益
	@Autowired
	private PublicBenMapper pbm;
	@Override
	public int addPublicBen(PublicBen p) {
		return pbm.insBen(p);
	}
	@Override
	public EasyUIDatagrid findAllBen(int pageSize, int pageNumber) {
		EasyUIDatagrid ed=new EasyUIDatagrid();
		ed.setRows(pbm.selAllBen(pageSize, (pageNumber-1)*pageSize));
		ed.setTotal(pbm.selAllCount());
		return ed;
	}

}
