package com.yzb.service;

import com.yzb.pojo.EasyUIDatagrid;
import com.yzb.pojo.PublicBen;

public interface PublicBenService {
	
	int addPublicBen(PublicBen p);
	
	EasyUIDatagrid findAllBen(int pageSize,int pageNumber);
}
