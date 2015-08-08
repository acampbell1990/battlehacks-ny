package com.battlehack.ny.emojipay.controller;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import twitter4j.DirectMessage;
import twitter4j.ResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;

@Controller
public class TwitterController {
	Logger LOG = Logger.getLogger(TwitterController.class);
	
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
		 accTok.g
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
}