package com.myproject.second.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.myproject.second.service.MainService;
import com.myproject.second.vo.MainVO;

@RestController
@RequestMapping(value = "api/main/*")
public class MainController {
	@Autowired
	private MainService mainService;

	@GetMapping("/test11")
	public List<MainVO> testBuild() {
		List<MainVO> list = mainService.getMainList();
		System.out.println(list);
//      list.stream().forEach((i)->{System.out.println(i.getImage());});

//      System.out.println(mainService.getMainList());
		return mainService.getMainList();
//      temp temp1 = new temp("1","2","3");
//      List<temp> tempList = new ArrayList<>();
//      tempList.add(temp1);
//      return tempList;
	}
//   @RequestMapping("/test11")
//   public String ddd() {
//      return "Dfdf";
//   }
}