package com.battlehack.ny.emojipay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.RequestToken;

import com.battlehack.ny.emojipay.dao.DAOFactory;
import com.battlehack.ny.emojipay.model.Client;
import com.battlehack.ny.emojipay.model.MyAccessToken;
import com.battlehack.ny.emojipay.model.OAuthToken;

@Controller
public class ClientController {
	@Autowired
	private OAuthToken oauthToken;	
	@Autowired
	DAOFactory daoFactory;
	
	Twitter twitter = new TwitterFactory().getInstance();

	@Autowired
	private MyAccessToken accestoken;
	Logger LOG = Logger.getLogger(ClientController.class);

	@RequestMapping(value="/main") 
	public String printWelcome(HttpServletResponse response,HttpServletRequest request) {

		twitter.setOAuthConsumer(oauthToken.getConsumerKey(),oauthToken.getConsumerSecret());
		RequestToken requestToken;
		try {
			String callbackURL = "http://127.0.0.1:8080/EmoticonPayments/success";
			requestToken = twitter.getOAuthRequestToken(callbackURL);
			String token = requestToken.getToken();
			String tokenSecret = requestToken.getTokenSecret();
			accestoken.setTokensecret(tokenSecret);
			accestoken.setToken(token);
			String authUrl = requestToken.getAuthorizationURL();
			request.setAttribute("authUrl", authUrl);
		} catch (TwitterException e) {
			e.printStackTrace();
		} 

		return "/index";
	}

	@RequestMapping(value="/RegisterUser.html", method = RequestMethod.GET)
	public ModelAndView getRegisterClientForm(){
		LOG.info("Accessed Register client page.");
		ModelAndView model = new ModelAndView("RegisterUser");
		return model;
	}

	@ModelAttribute
	public void addingAttrForCustomer(Model model){
		model.addAttribute("CustomerMessage", "Welcome to EmojiPay.  Making payments a click away for small businesses!");
	}

	@RequestMapping(value="/submitUserForm.html", method = RequestMethod.POST)
	public ModelAndView submitUserForm( @ModelAttribute("client") Client client, BindingResult result){
		LOG.info("Submitted the User Information.");

		ModelAndView model;
		if(result.hasErrors()){
			LOG.info("The results for submitting User information have errors.");
			model = new ModelAndView("RegisterUser");
			return model;
		}
		model = new ModelAndView("UserProfile");
		model.addObject("client", client);
		int clientID = registerUser(client,  daoFactory.getInstance().getCon());
		return model;
	}

	
	@RequestMapping(value="/EditUser.html", method = RequestMethod.GET)
	public ModelAndView getEditUser( @ModelAttribute("client") Client client, BindingResult result){
		LOG.info("Accessed Edit client profile page.");
		ModelAndView model = new ModelAndView("EditUser");
		return model;
	}
}
