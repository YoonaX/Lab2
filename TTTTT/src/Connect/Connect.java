package Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Connect {
	final static String DriverClassName="com.mysql.jdbc.Driver";
	final static String Url="jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_hitxtz?useUnicode=true&characterEncoding=UTF8";
	final static String Username="1lk3jkjn2z";
	final static String Password="hx0wljkk0l2yi1w4ki40lh1m1y4xmjzmyj54ilxi";

	static {
		try {
			Class.forName(DriverClassName);
	    }
		catch(ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	/*连接到数据库的函数
	 */
	public static Connection getConn() {
		try {
			System.out.println("成功连接数据库");
			return DriverManager.getConnection(Url, Username, Password);
		}
		catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/*插入
	 * insert into tablename(tablemen1,tablemen2,...,tablemenn) values( , ,..., );
	 */
	public boolean insert(String sql) {
		Connection conn=getConn();

		int i=0;
		try{
			PreparedStatement preStmt =conn.prepareStatement(sql);
	        i=preStmt.executeUpdate();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		if(i==1)
			return true;
		return false;
	}

	/*更新
	 * update tablename set tablemen1=?,tablemen2=?,...,tablemenn=? where tablemen=?
	 */
	public boolean update(String sql) {
		Connection conn=getConn();

		int i=0;
		try{
			PreparedStatement preStmt =conn.prepareStatement(sql);
	        i=preStmt.executeUpdate();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		if(i==1)
			return true;
		return false;
	}

	/*删除
	 * delete from tablename where tablemen=?
	 */
	public boolean delete(String sql){
		Connection conn=getConn();

		int i=0;
		try{
			Statement stmt=conn.createStatement();
	        i=stmt.executeUpdate(sql);
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		if(i==1)
			return true;
		return false;
	}

	/*选择数据
	 * select *(all)/tablemen from tablename (where tablemen=?)
	 */
	public List<String> select(String sql){
		Connection conn=getConn();

		List<String> meg=new ArrayList<String>();
		try{
			Statement stmt=conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				for(int i=1; i<=rs.getMetaData().getColumnCount(); i++){
		            meg.add(rs.getString(i));
		        }
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return meg;
	}

}