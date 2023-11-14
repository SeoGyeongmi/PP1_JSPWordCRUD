package com.crud.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
	public static Connection getConnection(){  
	    Connection conn=null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/p233_22200360",
					"p233_22200360", "Cheey9");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("드라이버 오류");
			throw new RuntimeException(e);
		}
	    return conn;
	}  
	
	public static void main(String ars[]) {
		Connection conn = getConnection();
		if(conn != null)
			System.out.println("DB 연결됨!");
		else
			System.out.println("DB 연결중 오류 !");
	}
}