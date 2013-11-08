package com.xxzzsoftware.mvc;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/**
	 * Link to register page
	 * @return
	 */
	@RequestMapping(value="/user/register",method=RequestMethod.GET)
	public String register(){
		return "register";
	}
	
	/**
	 * Do register real logic 
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/user/register",method=RequestMethod.POST)
	public String register(HttpServletRequest request, Model model){
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		logger.info("username = " + username);
		logger.info("password = " + password);

		model.addAttribute("username", username);
		
		return "user";
	}
	
	/**
	 * Do login real logic
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request, Model model) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		logger.info("username = " + username);
		logger.info("password = " + password);

		model.addAttribute("username", username);

		return "user";
	}


}
