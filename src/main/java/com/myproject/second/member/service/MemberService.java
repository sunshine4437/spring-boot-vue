package com.myproject.second.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.myproject.second.member.mapper.MemberMapper;
import com.myproject.second.member.vo.MemberVO;

@Service
public class MemberService {
	private MemberMapper memberMapper;

	public MemberService(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	public List<MemberVO> getAllMembers() {
		return memberMapper.findAll();
	}

	public MemberVO getMember(@Param("id") String id) {
		return memberMapper.findMember(id);
	}

	public String getNickname(int productno) {
		// TODO Auto-generated method stub
		return memberMapper.getNickname(productno);
	}

	public void updatePoint(String id, int point) {
		memberMapper.updatePoint(id, point);
	}

	public void updateNickname(String id, String nickname) {
		memberMapper.updateNickname(id, nickname);
	}

	public void updatePassword(String id, String password) {
		memberMapper.updatePassword(id, password);
	}

	public void updateTel(String id, String tel) {
		memberMapper.updateTel(id, tel);
	}

	public void updateAddress(String id, String zipcode, String address, String detailaddr) {
		memberMapper.updateAddress(id, zipcode, address, detailaddr);
	}

	public void deleteMember(String id) {
		memberMapper.deleteMember(id);
	}
}
