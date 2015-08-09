package com.battlehack.ny.emojipay.dao;

import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.User;
import twitter4j.auth.AccessToken;

public class TwitterDaoImpl implements TwitterDao {
	AccessToken accessToken = new AccessToken("1671148752-QjkSORzvS630VddhnZhRkYqyKE1IzPtTF4F23As",
			"doISTZsYxjFGppVCeiQHQCdThQg9jAXztC37LTOKk9T3P");
	Twitter twitter = new TwitterFactory().getInstance(accessToken);
	
	public String getTwitterHandle() {
		User user = null;
		try {
			user = twitter.verifyCredentials();
		} catch (TwitterException e) {
			e.printStackTrace();
		}
		return user.getScreenName();
	}

}
