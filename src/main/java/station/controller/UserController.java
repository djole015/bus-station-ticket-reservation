package station.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import station.model.User;
import station.repository.UserRepository;
import station.service.SecurityService;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired 
	private BCryptPasswordEncoder encoder;
	
	@Autowired 
	private SecurityService securityService;
	 
	
	@RequestMapping("/showRegistration")
	public String showRegistration() {
		return "login/registerUser";
	}
	
	@RequestMapping(value="/registerUser", method=RequestMethod.POST)
	public String register(@ModelAttribute("user") User user) {
		user.setPassword(encoder.encode(user.getPassword()));
		userRepository.save(user);
		return "login/login";
	}
	
	@RequestMapping("/showLogin")
	public String showLogin() {
		return "login/login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(
			@RequestParam("email") String email, 
			@RequestParam("password") String password,
			ModelMap modelMap
			) 
	{
		boolean loginResponse = securityService.login(email, password);
		
		if(loginResponse) {
			return "findLine";
		}
		else {
			modelMap.addAttribute("msg", "Invalid email or password. Please try again.");
		}
		return "login/login";
	}

}
