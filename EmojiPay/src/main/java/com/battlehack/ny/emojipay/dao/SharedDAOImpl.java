package com.battlehack.ny.emojipay.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;

import org.apache.log4j.Logger;

import com.battlehack.ny.emojipay.controller.ClientController;
import com.battlehack.ny.emojipay.model.Location;
import com.mysql.jdbc.Statement;

public class SharedDAOImpl {
	PreparedStatement pstmt = null;;
	ResultSet rs = null;
	Logger LOG = Logger.getLogger(SharedDAOImpl.class);
	
	public int insertLocation(Location location, Connection con){
			
		String query = "INSERT INTO locations ( address, city, state, zip ) "
				+ "VALUES('"+ location.getAddress() +"','"+location.getCity()+"','"+location.getState()+"','"+location.getZip()
				+"')";
		String result = "";
		int id = 0;
		try {
			
			pstmt = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			if(pstmt.execute()){
				LOG.info("true");
				
			}
			pstmt = con.prepareStatement("select locationID from locations where locationID=d last_insert_id()");
			
			rs = pstmt.executeQuery();
			id = rs.getInt(0);
			
			
			
			
			/*ResultSet rs=pstmt.getGeneratedKeys();
			rs= pstmt.getGeneratedKeys();
			if(rs.next()) {
				id = rs.getInt(1);
			}
			else{
				id=-9;
				result = "no return";
			}
			*/
			
		} catch (Exception e) {
			System.out.println(e);
			result = "failure";
			id = -999;
		}
		
		
		return id;
	}
}
