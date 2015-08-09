package com.battlehack.ny.emojipay.dao;

import java.sql.SQLException;

public class DAOFactory {
	private DBConnection instance;

	public void beginConnectionFactory() {
		instance = DBConnection.getInstance();
	}

	public DBConnection getInstance() {
		return instance;
	}

	public ClientDAOImpl createClientDAO() {
		return new ClientDAOImpl();
	}


	public void closeConnectionFactory() {
		/*
		try {
			instance.getCon().close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
	}
}
