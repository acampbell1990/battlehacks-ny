package com.battlehack.ny.emojipay.model;

public class Merchant {
	
	private String businessName;
	//private String paypalInformation;
	private String phoneNumber;
	private String email;
	private String firstFoodOption;
	private String secondFoodOption;
	private String thirdFoodOption;
	private String twitterHandle;
	//private Location location;
	
	// public Merchant(){};
	
//	public Location getLocation() {
//		return location;
//	}
//	public void setLocation(Location location) {
//		this.location = location;
//	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getFirstFoodOption() {
		return firstFoodOption;
	}
	public void setFirstFoodOption(String firstFoodOption) {
		this.firstFoodOption = firstFoodOption;
	}
	public String getSecondFoodOption() {
		return secondFoodOption;
	}
	public void setSecondFoodOption(String secondFoodOption) {
		this.secondFoodOption = secondFoodOption;
	}
	public String getThirdFoodOption() {
		return thirdFoodOption;
	}
	public void setThirdFoodOption(String thirdFoodOption) {
		this.thirdFoodOption = thirdFoodOption;
	}
	public String getTwitterHandle() {
		return twitterHandle;
	}
	public void setTwitterHandle(String twitterHandle){
		this.twitterHandle = twitterHandle;
	}
//	public String getPaypalInformation() {
//		return paypalInformation;
//	}
//	public void setPaypalInformation(String paypalInformation){
//		this.paypalInformation = paypalInformation;
//	}
}
