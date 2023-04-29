package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbconn {
	
	private Connection conn;
	
	public  Connection getConnection() throws SQLException{
//		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","hexinna0916");
//		} catch (ClassNotFoundException e) {
//			System.out.println("�Ҳ������񣡣�");
//			e.printStackTrace();
//		}
		//连接MySql数据库，用户名和密码都是root    
		try{
			 
			//加载MySql的驱动类   
			Class.forName("com.mysql.jdbc.Driver") ;   
			}catch(ClassNotFoundException e){   
			    System.out.println("找不到驱动程序类 ，加载驱动失败！");  
			     e.printStackTrace() ;   
			}
	     String url = "jdbc:mysql://localhost:3306/mydatabase" ;     
	     String username = "root" ;    
	     String password = "hexinna0916" ;    
	     try{    
	          conn = DriverManager.getConnection(url , username , password ) ;    
	     }catch(SQLException se){    
	          System.out.println("数据库连接失败！");    
	          se.printStackTrace() ;    
	     }    
		return conn;
	}
	
	public void closeAll(Connection conn,Statement stat,ResultSet rs){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				if(stat!=null){
					try {
						stat.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}finally{
						if(conn!=null){
							try {
								conn.close();
							} catch (SQLException e) {
								e.printStackTrace();
							}
						}
					}
				}
			}
		}
	}
	
}
