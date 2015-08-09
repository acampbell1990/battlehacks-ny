package com.battlehack.ny.emojipay.model;

public class Client {
	
	private String twitterHandle;
	//private String paypalInfo;
	private String email;
	private Location location;
	
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTwitterHandle() {
		return twitterHandle;
	}
	public void setTwitterHandle(String twitterHandle) {
		this.twitterHandle = twitterHandle;
	}
	/*public String getPaypalInfo() {
		return paypalInfo;
	}
	public void setPaypalInfo(String paypalInfo) {
		this.paypalInfo = paypalInfo;
	}*/
	
	
}
