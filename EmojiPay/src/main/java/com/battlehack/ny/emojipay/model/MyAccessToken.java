package com.battlehack.ny.emojipay.model;

public class MyAccessToken {
	 
    private String token;
    private String tokensecret;
    public String getTokensecret() {
        return tokensecret;
    }
    public void setTokensecret(String tokensecret) {
        this.tokensecret = tokensecret;
    }
    public String getToken() {
        return token;
    }
    public void setToken(String token) {
        this.token = token;
    }
     
}