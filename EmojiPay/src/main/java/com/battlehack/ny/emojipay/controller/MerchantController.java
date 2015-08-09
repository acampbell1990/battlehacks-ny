package com.battlehack.ny.emojipay.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.battlehack.ny.emojipay.dao.DAOFactory;
import com.battlehack.ny.emojipay.dao.MerchantDAOImpl;
import com.battlehack.ny.emojipay.model.Merchant;
@Controller
public class MerchantController {
	
	@Autowired
	DAOFactory daoFactory;
	Logger LOG = Logger.getLogger(MerchantController.class);

	@RequestMapping(value="/RegisterMerchant.html", method = RequestMethod.GET)
	public ModelAndView getAdmissionForm(){
		LOG.info("Accessed RegisterMerchant page.");
		ModelAndView model = new ModelAndView("RegisterMerchant");
		return model;
	}
	
	@ModelAttribute
	public void addingAttrForMerchants(Model model){
		model.addAttribute("MerchantMessage", "Welcome to EmojiPay.  Making payments a click away for small businesses!");
	}
	
	@RequestMapping(value="/submitMerchantForm.html", method = RequestMethod.POST)
	public ModelAndView submitGameForm( @ModelAttribute("merchant") Merchant merchant, BindingResult result){
		 LOG.info("Submitted the Merchant Information.");
		 daoFactory.beginConnectionFactory();
			MerchantDAOImpl merc = daoFactory.createMerchantDAO();
		ModelAndView model;
		if(result.hasErrors()){
			 LOG.info("The results for submitting merchant information have errors.");
			 model = new ModelAndView("RegisterMerchant");
			 return model;
		}
		model = new ModelAndView("MerchantProfile");
		model.addObject("merchant", merchant);
		merchant.setTwitterHandle("");
		merchant.getBusinessName();
		merchant.getEmail();
		merc.registerMerchant(merchant, daoFactory.getInstance().getCon());
		return model;
	}
	
	@RequestMapping(value="/EditMerchant.html", method = RequestMethod.GET)
	public ModelAndView getEditMerchant( @ModelAttribute("merchant") Merchant merchant, BindingResult result){
		LOG.info("Accessed RegisterMerchant page.");
		ModelAndView model = new ModelAndView("EditMerchant");
		return model;
	}
	
	
}
