package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.DBConnection;
import Model.Product;

public class ProductDao {
	public static void uploadProduct(Product p) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "insert into product (SID,Image,PName,PPrice,PCategory,PDesc) values (?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setInt(1, p.getSID());
			pst.setString(2, p.getImage());
			pst.setString(3, p.getPName());
			pst.setInt(4, p.getPPrice());
			pst.setString(5, p.getPCategory());
			pst.setString(6, p.getPDesc());

			pst.executeUpdate();
			System.out.println("Product Data Upload Succesfully.");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static List<Product> getProductSID(int SID) {
		List<Product> list = new ArrayList<>();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from product where SID=?";
			PreparedStatement pst = conn.prepareStatement(sql);

			pst.setInt(1, SID);
			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				Product p = new Product();
				p.setPID(rs.getInt("PID"));
				p.setSID(rs.getInt("SID"));
				p.setImage(rs.getString("Image"));
				p.setPName(rs.getString("PName"));
				p.setPPrice(rs.getInt("PPrice"));
				p.setPCategory(rs.getString("PCategory"));
				p.setPDesc(rs.getString("PDesc"));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}