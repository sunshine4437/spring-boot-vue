package com.myproject.second.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	@PostMapping("/login")
	public ResponseEntity<?> login(@RequestParam("id") String id, @RequestParam("password") String pwd) {
		return memberService.getMember(id, pwd);
	}

	@GetMapping("/productDetail/{productno}")
	public String getMember(@PathVariable("productno") int productno) throws Exception {
		return memberService.getNickname(productno);
	}

	@PutMapping("/point")
	public void updatePoint(@RequestParam("id") String id, @RequestParam("point") int point) throws Exception {
		memberService.updatePoint(id, point);
	}

	@PutMapping("/nickname")
	public void updateNickname(@RequestParam("id") String id, @RequestParam("nickname") String nickname)
			throws Exception {
		memberService.updateNickname(id, nickname);
	}

	@PutMapping("/password")
	public void updatePassword(@RequestParam("id") String id, @RequestParam("password") String password)
			throws Exception {
		memberService.updatePassword(id, password);
	}

	@PutMapping("/tel")
	public void updateTel(@RequestParam("id") String id, @RequestParam("tel") String tel) throws Exception {
		memberService.updateTel(id, tel);
	}

	@PutMapping("/address")
	public void updateAddress(@RequestParam("id") String id, @RequestParam("zipcode") String zipcode,
			@RequestParam("address") String address, @RequestParam("detailaddr") String detailaddr) throws Exception {
		memberService.updateAddress(id, zipcode, address, detailaddr);
	}

	@DeleteMapping("/delete/{id}")
	public ResponseEntity<?> deleteMember(@PathVariable("id") String id) throws Exception {
		try {
			memberService.deleteMember(id);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

	}
}
