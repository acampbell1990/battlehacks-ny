package com.battlehack.ny.emojipay.model;

public class Client {

	private String preference;
	private String twitterHandle;
	private String paypalInfo;
	private String email;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPreference() {
		return preference;
	}
	public void setPreference(String preference) {
		this.preference = preference;
	}
	public String getTwitterHandle() {
		return twitterHandle;
	}
	public void setTwitterHandle(String twitterHandle) {
		this.twitterHandle = twitterHandle;
	}
	public String getPaypalInfo() {
		return paypalInfo;
	}
	public void setPaypalInfo(String paypalInfo) {
		this.paypalInfo = paypalInfo;
	}
	
	
	
	
}
