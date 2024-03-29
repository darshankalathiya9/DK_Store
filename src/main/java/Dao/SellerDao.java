package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.PacketSentTimeHolder;

import Connection.DBConnection;
import Model.Seller;

public class SellerDao {
	public static void insertSeller(Seller s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into seller (Username,Contact,City,Email,Password) values (?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setString(1, s.getUsername());
			pst.setLong(2, s.getContact());
			pst.setString(3, s.getCity());
			pst.setString(4, s.getEmail());
			pst.setString(5, s.getPassword());

			pst.executeUpdate();
			System.out.println("Data Inserted Succesfully.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Seller checkEmailforRegistrtion(String Email) {
		Seller s1 = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller where Email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, Email);
			ResultSet rs = pst.executeQuery();
			
			if (rs.next()) {
				s1 = new Seller();
				s1.setID(rs.getInt("ID"));
				s1.setUsername(rs.getString("Username"));
				s1.setContact(rs.getLong("Contact"));
				s1.setCity(rs.getString("City"));
				s1.setEmail(rs.getString("Email"));
				s1.setPassword(rs.getString("Password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s1;
	}

	public static Seller loginSeller(Seller s) {
		Seller s1 = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller where Email=? and Password=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPassword());

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				s1 = new Seller();
				s1.setID(rs.getInt("ID"));
				s1.setUsername(rs.getString("Username"));
				s1.setContact(rs.getLong("Contact"));
				s1.setCity(rs.getString("City"));
				s1.setEmail(rs.getString("Email"));
				s1.setPassword(rs.getString("Password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s1;
	}
	
	public static Seller getSellerByID(int ID) {
		Seller s1 = null;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller where ID=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setInt(1, ID);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				s1 = new Seller();
				s1.setID(rs.getInt("ID"));
				s1.setUsername(rs.getString("Username"));
				s1.setContact(rs.getLong("Contact"));
				s1.setCity(rs.getString("City"));
				s1.setEmail(rs.getString("Email"));
				s1.setPassword(rs.getString("Password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s1;
	}

	public static void updateProfile(Seller s) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update seller set Username=?, Contact=?, City=?, Email=? where ID=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setString(1, s.getUsername());
			pst.setLong(2, s.getContact());
			pst.setString(3, s.getCity());
			pst.setString(4, s.getEmail());
			pst.setInt(5, s.getID());

			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static boolean checkOldPassword(int ID, String OP) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller where ID=? and Password=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setInt(1, ID);
			pst.setString(2, OP);

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static void changePassword(int ID, String NP) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update seller set Password=? where ID=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setString(1, NP);
			pst.setInt(2, ID);
			
			pst.executeUpdate();
			System.out.println("Password Changed.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static boolean checkEmail(String Email) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller where Email=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setString(1, Email);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public static void changeNewPassword(String Email, String NP) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "update seller set Password=? where Email=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setString(1, NP);
			pst.setString(2, Email);
			pst.executeUpdate();
			System.out.println("Password Changed Succesfully. ");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Seller> getAllSellers() {
		List<Seller> list = new ArrayList<Seller>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from seller";
			PreparedStatement pst = conn.prepareStatement(sql);

			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Seller s1 = new Seller();
				s1.setID(rs.getInt("ID"));
				s1.setUsername(rs.getString("Username"));
				s1.setContact(rs.getLong("Contact"));
				s1.setCity(rs.getString("City"));
				s1.setEmail(rs.getString("Email"));
				s1.setPassword(rs.getString("Password"));
				list.add(s1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static void deleteSeller(int ID){
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "delete from seller where ID =?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setInt(1, ID);
			pst.executeUpdate();
			System.out.println("Data Deleted By Admin Succesfully");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}