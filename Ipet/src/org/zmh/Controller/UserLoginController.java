package org.zmh.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.zmh.Emtity.User;
import org.zmh.Service.UserServiceImpl;


@SessionAttributes(value = "username")
@RequestMapping(value = "loginController")
@Controller
public class UserLoginController {
	
	@Autowired
	@Qualifier("userService")
	private UserServiceImpl userService;

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value="checkUser")
	public String checkUser(User user,Model model) {
		Integer id = userService.findUserId(user.getName());
		if(id != null) {
			User userinfo = userService.findUserById(id);
			if(userinfo.getPassword().equals(user.getPassword())) {
				model.addAttribute("username", userinfo.getName());
				return "index";
			}else {
				model.addAttribute("passerror", "√‹¬Î¥ÌŒÛ");
				return "login";
			}
		}else {
			model.addAttribute("nameerror", "”√ªß√˚¥ÌŒÛ");
			return "login";
		}
		
		
	}
}
