package com.myproject.second.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

	public ResponseEntity<?> getMember(String id, String pwd) {
		MemberVO res = memberMapper.findMember(id);
		Map<String, String> result = new HashMap<>();

		if (res == null)
			return new ResponseEntity<>("아이디가 존재하지 않습니다.", HttpStatus.UNAUTHORIZED);
		else {
			if (res.getPassword().equals(pwd)) {
				result.put("auth", res.getAuthority());
				result.put("nickname", res.getNickname());
				result.put("id", res.getId());
				return new ResponseEntity<>(result, HttpStatus.OK);
			} else {
				return new ResponseEntity<>("비밀번호가 틀립니다.", HttpStatus.UNAUTHORIZED);
			}
		}
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
