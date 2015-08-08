package com.battlehack.ny.emojipay.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.auth.OAuth2Token;

@Controller
public class ClientController {
    @Autowired
    private OAuth2Token oauthToken;	
    Twitter twitter = new TwitterFactory().getInstance();

    @Autowired
    private MyAccessToken accestoken;
	Logger LOG = Logger.getLogger(ClientController.class);
	
	@RequestMapping(value="/main") 
	public String printWelcome(HttpServletResponse response,HttpServletRequest request) {

     twitter.setOAuthConsumer(oauthToken.getConsumerKey(),
     oauthToken.getConsumerSecret());
     RequestToken requestToken;
     try {
          
         String callbackURL = "http://127.0.0.1:8080/SpringMVC/callback";
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
      
     return "login";
 }
		return "/index";
	}
}
