package com.battlehack.ny.emojipay.dao;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;

public class DBConnection {
	static Logger LOG = Logger.getLogger(DBConnection.class);
	
	private static Connection con;
	private static DBConnection instance = null;
	private String dbServer;
	private String dbPort;
	private String dbName;
	
	//private constructor
	private DBConnection(){
		LOG.info("in the constructor");
//		Properties props = new Properties();
//		//InputStream inputStream = getClass().getResourceAsStream("database.properties");
//		try {
//			//props.load(inputStream);
//		} catch (IOException e1) {
//			e1.printStackTrace();
//		}
		//dbServer = props.getProperty("dbserver");
		//dbPort = props.getProperty("dbport");
		//dbName = props.getProperty("dbname");
		//String url = "jdbc:mysql://localhost/dbName", "root", "secret";
		
		try{
			this.con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emoji", "root", "");
		}catch(Exception e){
			System.out.println("Result is: "+ e);
		}
	}
	
	//public getter
	public static DBConnection getInstance(){
		LOG.info("In the getinstance");
		
		if(instance == null){
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				LOG.info("In the getinstance eerrrorrr");
				e.printStackTrace();
			} 
			instance = new DBConnection();
			return instance;
		}
		else{	
			return instance;
		}
	}

	public Connection getCon() {
		return con;
	}
	
}
