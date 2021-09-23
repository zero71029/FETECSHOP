package com.jetec.shop.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jetec.shop.Tools.ZeroTools;
import com.jetec.shop.model.AdminBean;
import com.jetec.shop.repository.service.BackstageService;


@Controller
public class PublicControl {
	@Autowired
	BackstageService backstageService;
	@Autowired
	private ZeroTools zTools;
	
	
	@RequestMapping(path = { "/", "/index" })
	public String index() {
		return "shop";
	}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////55
//後台登入
	@RequestMapping("/home")
	public String home(Model model, @RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session, @RequestParam("g-recaptcha-response") String token) {
		System.out.println("*****後台登入*****");

// 轉換資料
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
// 機器人判斷		
		if (!zTools.recaptcha(token)) {
			System.out.println("errors.put(recaptcha, 需要驗證)");
			errors.put("recaptcha", "需要驗證");
		}
		AdminBean adminBean = backstageService.findAdmin(email, password);
		if(adminBean == null)errors.put("result", "帳號密碼錯誤");
		
// 如果有錯 回原本頁面
		if (errors != null && !errors.isEmpty()) {
			System.out.println("errors");
			return "/time";
		}
		
		session.setAttribute("adminLogin", adminBean);
		System.out.println(adminBean);

		return "redirect:/backstage/shopBack.jsp";
	}
}
