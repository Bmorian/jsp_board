package jspboard.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
   public Connection conn = null;	
   private String url = "jdbc:mysql://localhost:3306/javaboard";
   private String option = "?useUnicode=true&characterEncoding=utf-8";
   private String user = "root";
   private String pass = "0406";
   
   public DBConnect() {
	  try {
		Class.forName("com.mysql.cj.jdbc.Driver");
        this.conn = DriverManager.getConnection(url+option, user, pass);
	    System.out.println("db접속 성공");
	  } catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	  } catch (SQLException e) {
		  e.printStackTrace();
	  }
   }
}
