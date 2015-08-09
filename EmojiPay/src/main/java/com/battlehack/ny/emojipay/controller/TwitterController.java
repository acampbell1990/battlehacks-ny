package com.battlehack.ny.emojipay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import twitter4j.Twitter;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;

import com.battlehack.ny.emojipay.model.MyAccessToken;
import com.battlehack.ny.emojipay.model.OAuthToken;

@Controller
public class TwitterController {
	 @Autowired
	 private OAuthToken oauthToken;
	     
	 @Autowired
	 private MyAccessToken accessToken; 
	Logger LOG = Logger.getLogger(TwitterController.class);
	
/*
	@RequestMapping(value="/success")
	public void callback(HttpSession session, String oauth_token, String oauth_verifier) {
		AccessToken accessToken = new AccessToken("1671148752-QjkSORzvS630VddhnZhRkYqyKE1IzPtTF4F23As",
				"doISTZsYxjFGppVCeiQHQCdThQg9jAXztC37LTOKk9T3P");
		Twitter twitter = new TwitterFactory().getInstance(accessToken);
		 AccessToken accTok = null;
		 try {
			 accTok = twitter.getOAuthAccessToken();
		 } catch (Exception e) {
		    e.printStackTrace();
		 }
		
		ResponseList<DirectMessage> status = null;
		try {
			status = twitter.getDirectMessages();
		} catch (TwitterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		LOG.info(status.get(0));
		System.out.println(status.get(0));
	}
*/
	    @RequestMapping(value="/success")
	    protected ModelAndView handleRequestInternal(HttpServletRequest request,
	            HttpServletResponse response) throws Exception {
	            Twitter twitter = new TwitterFactory().getInstance();
	             
	            twitter.setOAuthConsumer(oauthToken.getConsumerKey(), oauthToken.getConsumerSecret());
	            String verifier = request.getParameter("oauth_verifier");
	           RequestToken requestToken = new RequestToken(accessToken.getToken(), accessToken.getTokensecret());
	           AccessToken accessToken = twitter.getOAuthAccessToken(requestToken,verifier);
	           twitter.setOAuthAccessToken(accessToken);
	           User user = twitter.verifyCredentials();
	           System.out.println(user.getName());
	           ModelAndView model = new ModelAndView("loggedIn");
	           model.addObject("message", user.getName());
	           return model;
	    }
}