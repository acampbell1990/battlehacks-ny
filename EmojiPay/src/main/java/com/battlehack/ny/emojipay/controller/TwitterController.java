package com.battlehack.ny.emojipay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;
import twitter4j.conf.Configuration;
import twitter4j.conf.ConfigurationBuilder;

import com.battlehack.ny.emojipay.model.MyAccessToken;
import com.battlehack.ny.emojipay.model.OAuthToken;

@Controller
public class TwitterController {
	Twitter twitter = new TwitterFactory().getInstance();

	@Autowired
	private OAuthToken oauthToken;

	@Autowired
	private MyAccessToken accessToken; 
	Logger LOG = Logger.getLogger(TwitterController.class);

	private final String CONSUMER_KEY = "zfIKyZf2aladF7ooaBMlCmAwP";
	private final String CONSUMER_SECRET = "uh7Kgd3DOeo8KKNWFVXYQbw4DGK9fXZ2poHGfMTMZjG9J6gPzG";


	@RequestMapping(value="/twitterAuth") 
	public String printWelcome(HttpServletResponse response,HttpServletRequest request) {
		ConfigurationBuilder builder = new ConfigurationBuilder();
		builder.setOAuthConsumerKey(CONSUMER_KEY);
		builder.setOAuthConsumerSecret(CONSUMER_SECRET);
		Configuration configuration = builder.build();
		TwitterFactory factory = new TwitterFactory(configuration);
		Twitter twitter = factory.getInstance();
		RequestToken requestToken;
		String authUrl = null;	
		try {
			String callbackURL = "http://127.0.0.1:8080/EmoticonPayments/success";
			requestToken = twitter.getOAuthRequestToken(callbackURL);
			String token = requestToken.getToken();
			String tokenSecret = requestToken.getTokenSecret();
			accessToken.setTokensecret(tokenSecret);
			accessToken.setToken(token);
			authUrl = requestToken.getAuthorizationURL();
			request.setAttribute("authUrl", authUrl);
		} catch (TwitterException e) {
			LOG.info(e.getMessage());
			e.printStackTrace();
		}
		return "redirect:" + authUrl;
	}
	
	@RequestMapping(value="/success")
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response){
		Twitter twitter = new TwitterFactory().getInstance();
		String verifier = request.getParameter("oauth_verifier");
		RequestToken requestToken = new RequestToken(accessToken.getToken(), accessToken.getTokensecret());
		AccessToken accessToken;
		ModelAndView model = null;
		try {
			accessToken = twitter.getOAuthAccessToken(requestToken,verifier);
			twitter.setOAuthAccessToken(accessToken);
			User user = twitter.verifyCredentials();
			System.out.println(user.getName());
			model = new ModelAndView("loggedIn");
			model.addObject("message", user.getName());
		} catch (TwitterException e) {
			e.printStackTrace();
			LOG.info(e.getMessage());
		}
		return model;
	}
}
