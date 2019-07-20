package lib;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.rowset.CachedRowSet;
import com.sun.rowset.CachedRowSetImpl;
public class DBtools {
	public static Connection getConnection(){
		Connection coma=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/lib";
			String user = "root";
			String password = "41523033";
			try {
				coma= DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {		
			System.out.print("wrong");
		}
		return coma;
		
	}
	public static void dochange(String sql){
		Connection con=getConnection();
		try {
			Statement stm=con.createStatement();
			stm.executeUpdate(sql);
			stm.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static CachedRowSet doChange(String sql){
		CachedRowSet crs =null; 
		Connection con=getConnection();
		System.out.print(con);
		Statement stm=null;
		ResultSet rs=null;
		String sql1=sql;
		try {
			stm = con.createStatement();
		rs=stm.executeQuery(sql1);	
		crs=new CachedRowSetImpl();
		crs.populate(rs);
	
		rs.close();
		stm.close();
		con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		return crs ;
	}
	
}
