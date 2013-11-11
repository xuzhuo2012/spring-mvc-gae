package com.xxzzsoftware.mvc;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();

		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "mini_social/index";
	}

	@RequestMapping(value = "/contactus", method = RequestMethod.POST)
	public String contactus(HttpServletRequest request, Model model) {

		String author = request.getParameter("author");
		String email = request.getParameter("email");
		String text = request.getParameter("text");

		logger.info("author == " + author);
		logger.info("email == " + email);
		logger.info("text == " + text);

		// 重定向
		return "redirect:/";
	}

	@RequestMapping(value = "/downloadApp", params = "appName", method = RequestMethod.GET)
	public String downloadApp(@RequestParam("appName") String appName, HttpServletRequest request, HttpServletResponse response) {
		//return "forward:/resources/downloads/"+appName+".apk";
		return "redirect:/resources/downloads/"+appName+".apk";
	}

}
