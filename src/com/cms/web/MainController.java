package com.cms.web;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javabean.Col;
import javabean.UserInfo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import table.ColumnTable;
import table.UserInfoTable;

@Controller
@RequestMapping("/NVMainCtrl")
@SessionAttributes("userInfo")
public class MainController {

	
	@ModelAttribute("userInfo")
	public String  getList(){
		String userInfo = "test";
		return userInfo;
	}
	
	
	@RequestMapping("user/allUser")
	public ModelAndView getAllUserInfo() throws Exception{
		UserInfo userInfo = UserInfoTable.loadUserInfoByName("admin");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userInfo");
		mav.addObject("userInfo", userInfo);
		return mav;
	}
	
	@RequestMapping("user/{userName}")
	public ModelAndView getUserInfo(@PathVariable String userName) throws Exception {
		UserInfo userInfo = UserInfoTable.loadUserInfoByName(userName);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userInfo");
		mav.addObject("userInfo", userInfo);
		return mav;
	}
	
	
	@RequestMapping("user/allen")
	public String getUserInfo(ModelMap modelMap,SessionStatus sessionStatus){
		String userInfo = (String) modelMap.get("userInfo");
		
		if(userInfo != null){
			userInfo = "allen";
			sessionStatus.setComplete();
		}
		
		return "/user/userInfo";
	}
	
	
	@RequestMapping("col")
	public ModelAndView getArticl(@RequestParam("colId") String colID) throws Exception {
		System.out.println(colID);
		Col[] cols = ColumnTable.loadArticleCols();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/colInfo");
		mav.addObject("cols", cols);	
		return mav;
	}
	
}
