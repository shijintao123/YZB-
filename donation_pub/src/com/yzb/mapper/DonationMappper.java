package com.yzb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.yzb.pojo.Donation;

public interface DonationMappper {
	//学生也能发  
	//审核
	@Select("select * from donation")
	List<Donation> selALLdonation();

	// 查出捐助信息的详细信息
	@Select("select * from donation where id = #{id}")
	Donation selDonationById(int id);
}
