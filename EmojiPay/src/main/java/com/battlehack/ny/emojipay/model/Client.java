package com.battlehack.ny.emojipay.model;

public class Client {

	private Person person;
	private String preference;
	private String twitterHandle;
	private String paypalInfo;
	private Location location;

	
	public Location getLocation() {
		return location;
	}
	public void setLocation(Location location) {
		this.location = location;
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
