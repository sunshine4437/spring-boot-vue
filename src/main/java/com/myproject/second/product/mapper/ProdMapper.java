package com.myproject.second.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.myproject.second.product.vo.ProdVO;

@Mapper
public interface ProdMapper {
	@Select("select * from s_product")
	List<ProdVO> findAllProduct();

}