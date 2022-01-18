package com.myproject.second.basket.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.myproject.second.basket.vo.BasketVO;

@Mapper
public interface BasketMapper {

	@Select("select s_basket.id, s_basket.productno, s_basket.option1, s_basket.option2, s_basket.amount, s_product.productname, s_product.imagename, s_product.price "
			+ "from s_basket left join s_product on s_basket.productno = s_product.productno where s_basket.id = #{id}")
	List<BasketVO> findAllBasket(@Param("id") String id);

	@Insert("insert into s_basket values(#{id}, #{productno}, #{option1}, #{option2}, #{amount})")
	void addBasket(@Param("id") String id, @Param("productno") int productno, @Param("option1") String option1,
			@Param("option2") String option2, @Param("amount") int amount);

}
