package com.myproject.second.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.member.service.MemberService;
import com.myproject.second.member.vo.MemberVO;

@RestController
@RequestMapping(value = "api/member/*")
public class MemberController {
	@Autowired
	private MemberService memberService;

	@GetMapping("/all")
	public List<MemberVO> getAllMembers() {
		return memberService.getAllMembers();
	}

	@GetMapping("/{id}")
	public MemberVO getMember(@PathVariable("id") String id) throws Exception {
		return memberService.getMember(id);
	}

	@GetMapping("/productDetail/{productno}")
	public String getMember(@PathVariable("productno") int productno) throws Exception {
		String temp = memberService.getNickname(productno);
		System.out.println(temp);
		return temp;
	}
}
