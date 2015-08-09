package com.battlehack.ny.emojipay;

import org.apache.log4j.Logger;
import org.junit.Test;

import twitter4j.DirectMessage;
import twitter4j.ResponseList;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
 

public class TwitterTests {
	 
		private static Logger LOG = Logger.getLogger(TwitterTests.class);	
	 
		@Test
		public void testPostingToTwitter() throws TwitterException{
			AccessToken accessToken = new AccessToken("1671148752-QjkSORzvS630VddhnZhRkYqyKE1IzPtTF4F23As",
					"doISTZsYxjFGppVCeiQHQCdThQg9jAXztC37LTOKk9T3P");
			Twitter twitter = new TwitterFactory().getInstance(accessToken);
			String message="BattleHacks Test";
			ResponseList<DirectMessage> status = twitter.getDirectMessages();
			LOG.debug("Successfully updated status to " + status.get(0));
			System.out.println(status.get(0));
		}
}
