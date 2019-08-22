package com.kgv.biz.connect;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBConnect {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url2="jdbc:oracle:thin:@localhost:1521:xe";
		return DriverManager.getConnection(url2,"kgv","kgv");
	}
	public static void close(Statement stmt,Connection conn) 
			throws SQLException {
		// close overloading
		if(stmt != null) {
			stmt.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
	public static void close(ResultSet rs1,Statement stmt1,
			Connection conn1) throws SQLException {
		
		if(rs1 != null) {
			rs1.close();
		}
		if(stmt1 != null) {
			stmt1.close();
		}
		if(conn1 != null) {
			conn1.close();
		}
	}
	
	
	

}
