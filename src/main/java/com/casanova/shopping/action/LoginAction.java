package com.casanova.shopping.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.casanova.shopping.model.User;
import com.casanova.shopping.service.UserService;

@Controller
@RequestMapping("/")
public class LoginAction {

	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping("login")
	public String login(User user, Model model){
		User u = userService.getUser(user.getId());
		if (u == null) {
			model.addAttribute("errorInfo", "you password is error!");
			return "login";
		}
		
		return "redirect:/login";
	}
}
