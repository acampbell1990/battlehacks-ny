package com.battlehack.ny.emojipay.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {
	Logger LOG = Logger.getLogger(ClientController.class);
	
	@RequestMapping(value="/main")
	public String loadPage(Map<String,Object> map) {
	 LOG.info("Entered loadPage");
		return "/index";
	}
}
