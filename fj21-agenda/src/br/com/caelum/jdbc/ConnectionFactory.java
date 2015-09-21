package br.com.caelum.jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public Connection getConnection() {
		try{
			//colocar o mysql-connector-java-5.1.36-bin.jar no WEB-INF e adicionar no Build Path
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			return DriverManager.getConnection(
					"jdbc:mysql://localhost/fj21", "root", "123motta"
					);			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
}
