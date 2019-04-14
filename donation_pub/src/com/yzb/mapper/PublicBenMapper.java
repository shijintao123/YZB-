package com.yzb.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.yzb.pojo.PublicBen;

public interface PublicBenMapper {
	//插入一条公益信息
	@Insert("insert into publicben values(default,#{title},#{id},#{content},#{pic},now(),0)")
	int insBen(PublicBen p);
	
	//查找所有的公益信息
	@Select("select p.* ,u.username from publicben p inner join `user` u on u.id=p.id limit #{pageStart} , #{pageSize} ")
	List<PublicBen> selAllBen(@Param("pageSize")int pageSize,@Param("pageStart")int pageStart);
	
	//查找所有的条数
	@Select("select count(1) from publicben")
	int selAllCount();
	
}
