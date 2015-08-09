package com.battlehack.ny.emojipay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.battlehack.ny.emojipay.model.Client;
import com.battlehack.ny.emojipay.model.Merchant;

public class MerchantDAOImpl {
	PreparedStatement stmt = null;;
	ResultSet rs = null;
	

	public String registerMerchant(Merchant merchant, Connection con) {
		//int locationID = new SharedDAOImpl().insertLocation(merchant.getLocation(), con);
		//int id = 0;
		String query = "INSERT INTO merchant ( twitter_handle, name, item1, email, phone ) "
				+ "VALUES('"+ merchant.getTwitterHandle() +"','"+merchant.getBusinessName()+"','"+merchant.getFirstFoodOption()+
				"','"+ merchant.getEmail()+ "','"+merchant.getPhoneNumber()+"')";
		
		String result = "";
		try {
			stmt = con.prepareStatement(query);
			stmt.executeUpdate();
			//id = rs.getInt("clientID");
			result = "success";
		} catch (Exception e) {
			System.out.println(e);
			result = "failure";
		}
		
		return result;
	}


	public int getMerchantID(Merchant merchant, Connection con) {
		String query = "Select merchantID from merchant where '"+merchant.getTwitterHandle()+"'= twitter_handle";
		String result = "";   
		ResultSet rs = null;
		int id = 0;
		try {
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();
			id = rs.getInt("merchantID");
		} catch (Exception e) {
			System.out.println(e);
			id = -999;
		}
		return id;
	}
}
