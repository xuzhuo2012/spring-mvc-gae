package com.xxzzsoftware.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class BlogController {
	private static final Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	@RequestMapping(value="/blog",method=RequestMethod.GET)
	public String blogHome(){
		
		return "blog/index";
	}


}
