package com.myproject.second.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.myproject.second.vo.MainVO;

@Mapper
public interface MainMapper {
	@Select("SELECT * FROM myuser")
	List<MainVO> findAll();

	@Select("SELECT * FROM myuser where id = #{id}")
	MainVO findById(String id);

//    @Insert("INSERT INTO mytable (name, age) values (#{name}, #{age})")
//    void save(@Param("name") String name, @Param("age") int age);
}