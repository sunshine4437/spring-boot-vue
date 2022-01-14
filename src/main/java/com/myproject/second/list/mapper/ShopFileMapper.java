package com.myproject.second.list.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.myproject.second.list.vo.ShopFile;

@Mapper
public interface ShopFileMapper {
	
    @Select("select * from s_list where title=#{title}")
	ShopFile getShopFile(@Param ("title") String title);
    
    @Select("select * from s_list")
	List<ShopFile> getShopAllFile();
    
    @Insert("insert into s_list(title,price,rate,delivery,vendor) values (#{title},#{price},#{rate},#{delivery},#{vendor})")
    int postShopFile(@Param("title")String title, 
    		@Param("price")int price, 
    		@Param("rate")int rate, 
    		@Param("delievey")int delivery, 
    		@Param("vendor")String vendor);
    
    @Update("update s_list set price=#{price},rate=#{rate},delivery=#{delivery},vendor=#{vendor} where title=#{title}")
	int putShopFile(@Param("title")String title, 
    		@Param("price")int price, 
    		@Param("rate")int rate, 
    		@Param("delievey")int delivery, 
    		@Param("vendor")String vendor);
    
    @Delete("delete from s_list where title=#{title}")
	int deleteShopFile(@Param("title") String title);
	

}
