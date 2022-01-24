package com.myproject.second.order.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.myproject.second.order.vo.OrderVO;

@Mapper
public interface OrderMapper {
	@Select("Select * from s_order where id = #{id}")
	List<OrderVO> getAllOrderList(@Param("id") String id);

	@Insert("insert into s_order values (order_seq.NEXTVAL, #{id}, #{productno}, #{selectedoption}, #{totalprice}, sysdate, '결제 완료', #{ordermethod}, #{dname}, #{dtel}, #{dzipcode}, #{daddress}, #{ddetailaddr})")
	void insertOrder(@Param("id") String id, @Param("productno") int productno,
			@Param("selectedoption") String selectedoption, @Param("totalprice") int totalprice,
			@Param("ordermethod") String ordermethod, @Param("danme") String danme, @Param("dtel") String dtel,
			@Param("dzipcode") String dzipcode, @Param("daddress") String daddress,
			@Param("ddetailaddr") String ddetailaddr);

	@Update("update s_order set state = #{state} where orderidx = #{orderidx}")
	void updateOrder(@Param("orderidx") long orderidx, @Param("state") String state);
}
