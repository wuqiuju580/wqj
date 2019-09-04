package com.bw.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.entity.User;
import com.bw.service.UserService;

@Controller
public class UserController {

	@Resource
	private UserService service;
	
	@RequestMapping("findAll.do")
	public String findAll(ModelMap modelMap){
		List<User> list=service.findAll();
		modelMap.addAttribute("list", list);
		return "list";
	}
}
