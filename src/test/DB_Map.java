package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DB_Map {
	
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;

	public DB_Map() {
		try{
			String dbURL= "jdbc:mysql://127.0.0.1:3306/oss?serverTimezone=Asia/Seoul";
			String dbID = "root";
			String dbPassword= "1234";
			
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			Class.forName("com.mysql.jdbc.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MapData> getMap(){
		String sql = "SELECT * FROM map_data;";
		ArrayList<MapData> list = new ArrayList<MapData>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MapData md = new MapData();
				md.setTitle(rs.getString(1));
				md.setX(rs.getString(2));
				md.setY(rs.getString(3));
				md.setAddr1(rs.getString(4));
				md.setAddr2(rs.getString(5));
				list.add(md);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	  public int addMarker(MapData map)   {
	      String SQL = "INSERT INTO MAP_DATA VALUES (?,?,?,?,?)";
	      
	            try {
	               pstmt = conn.prepareStatement(SQL);
	               pstmt.setString(1,  map.getTitle());
	               pstmt.setString(2,  map.getX());
	               pstmt.setString(3,  map.getY());
	               pstmt.setString(4,  map.getAddr1());
	               pstmt.setString(5,  map.getAddr2());
	               return pstmt.executeUpdate();
	            }catch (Exception e)   {
	               e.printStackTrace();
	            }
	            return -1; // DB¿À·ù
	   }

}
