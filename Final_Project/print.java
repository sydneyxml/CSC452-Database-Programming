// Ximan Liu
// CSC452
// Final Project
// print.java


import java.sql.*;
import java.io.*;


public class print {

	public static void main (String args [])
		      throws SQLException, IOException {

		    try {
		      Class.forName ("oracle.jdbc.driver.OracleDriver");
		    } catch (ClassNotFoundException e) {
		        System.out.println ("Could not load the driver");
		      }

		    String user, pass;
		    user = readEntry("userid  : ");
		    pass = readEntry("password: ");
		    Connection conn = DriverManager.getConnection
		        ("jdbc:oracle:thin:@acadoradbprd01.dpu.depaul.edu:1521:ACADPRD0",user,pass);

		    String query = "SELECT * FROM ZIPCODE";
		    Statement s = conn.createStatement();
		    ResultSet r = s.executeQuery(query);
		    while (r.next ()) {
		      String ZIP = r.getString(1);
		      String CITY = r.getString(2);
		      String STATE = r.getString(3);
		      String LATITUDE = r.getString(4);
		      String DST = r.getString(5);
		      System.out.println(ZIP + " " + CITY + "  " + STATE + " " + LATITUDE + " " + DST);
		    }
		    conn.close();
		  }

		  //readEntry function -- to read input string
		  static String readEntry(String prompt) {
		     try {
		       StringBuffer buffer = new StringBuffer();
		       System.out.print(prompt);
		       System.out.flush();
		       int c = System.in.read();
		       while(c != '\n' && c != -1) {
		         buffer.append((char)c);
		         c = System.in.read();
		       }
		       return buffer.toString().trim();
		     } catch (IOException e) {
		       return "";
		       }
		   }	
}
