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

	@Select("Select s_order.orderidx, s_order.productno, s_order.selectedoption, s_order.totalprice, s_order.orderdate, s_order.state, s_order.seller, s_product.productname, s_product.imagename from s_order left join s_product on s_order.productno = s_product.productno where s_order.id = #{id} and s_order.state in ('결제 완료', '배송중', '배송 완료')")
	List<OrderVO> getOrderList(@Param("id") String id);

	@Select("Select s_order.orderidx, s_order.productno, s_order.selectedoption, s_order.totalprice, s_order.orderdate, s_order.state, s_order.seller, s_product.productname, s_product.imagename from s_order left join s_product on s_order.productno = s_product.productno where s_order.id = #{id} and s_order.state in ('취소 완료', '취소 요청', '환불 완료', '환불 요청')")
	List<OrderVO> getCancelList(@Param("id") String id);

	@Select("Select s_member.nickname from s_product left join s_member on s_product.sellerid = s_member.id where s_product.productno = #{productno}")
	String getSeller(@Param("productno") int productno);

	@Insert("insert into s_order values (order_seq.NEXTVAL, #{order.id}, #{order.productno}, #{order.selectedoption}, #{order.totalprice}, sysdate, '결제 완료', #{order.ordermethod}, #{seller}, #{order.dname}, #{order.dtel}, #{order.dzipcode}, #{order.daddress}, #{order.ddetailaddr})")
	void insertOrder(@Param("order") OrderVO orderVO, @Param("seller") String seller);

	@Update("update s_order set state = #{state} where orderidx = #{orderidx}")
	void updateOrder(@Param("orderidx") long orderidx, @Param("state") String state);

	@Select("select count(orderidx) from s_order where id = #{id} and state in ('결제완료', '배송중', '취소 요청')")
	int haveOrder(@Param("id") String id);
}
