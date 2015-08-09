package com.battlehack.ny.emojipay.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;

import com.battlehack.ny.emojipay.model.Location;

public class SharedDAOImpl {
	PreparedStatement stmt = null;;
	ResultSet rs = null;
	
	public int insertLocation(Location location, Connection con){
			//CREATE TABLE locations (locationID INT(5) NOT NULL AUTO_INCREMENT, address VARCHAR(50), city VARCHAR(30), state VARCHAR(2), zip INT(5),
		//PRIMARY KEY(locationID));
		String query = "INSERT INTO locations ( address, city, state, zip ) "
				+ "VALUES('"+ location.getAddress() +"','"+location.getCity()+"','"+location.getState()+"','"+location.getZip()
				+"'')";
		String result = "";
		ResultSet rs = null;
		int id = 0;
		try {
			stmt = con.prepareStatement(query);
			stmt.executeUpdate();
			id = rs.getInt("locationID");
			result = "success";
		} catch (Exception e) {
			System.out.println(e);
			result = "failure";
			id = -999;
		}
		
		
		return id;
	}
}