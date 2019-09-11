package com.ebix.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	
	Connection conexao;
	PreparedStatement ps;
	ResultSet rs;

	public void abrirConexao() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conexao = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/projeto_ebix?useTimezone=true&serverTimezone=UTC", "root", "3301");

	}
	public void fechaConexao() throws Exception{
		conexao.close();
	}
}
