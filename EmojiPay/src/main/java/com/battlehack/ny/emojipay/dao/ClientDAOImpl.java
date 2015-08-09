package com.battlehack.ny.emojipay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.battlehack.ny.emojipay.model.Client;


public class ClientDAOImpl {

	
	PreparedStatement stmt = null;;
	ResultSet rs = null;
	

	public int registerUser(Client client, Connection con) {
		//String query = "INSERT INTO client ( twitter_handle, email) VALUES('"+ client.getTwitterHandle() + "','"+client.getEmail()+"')";
		String query = "INSERT INTO client ( twitter_handle, email) VALUES('robRules','rob@rkclose.com')";
		
		String result = "";
		try {
			stmt = con.prepareStatement(query);
			stmt.executeUpdate();
			result = "success";
		} catch (Exception e) {
			System.out.println(e);
			result = "failure";
		}
		return getClientID(client, con);
	}


	public int getClientID(Client client, Connection con) {
		String query = "Select clientID from client where '"+client.getTwitterHandle()+"'= twitter_handle";
		String result = "";   
		ResultSet rs = null;
		int id = 0;
		try {
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();
			id = rs.getInt("clientID");
		} catch (Exception e) {
			System.out.println(e);
			id = -999;
		}
		return id;
	}
	
}
