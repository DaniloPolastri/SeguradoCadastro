package br.com.ebix.test;

import br.com.ebix.dao.DaoGenerico;
import br.com.ebix.entity.Login;
import br.com.ebix.entity.Segurado;
import br.com.ebix.entity.Seguro;

public class Test {
	public static void main(String[] args) {

		Login login = new Login();
		Seguro seguro = new Seguro();
		Segurado segurado = new Segurado();

		DaoGenerico<Login> daoLogin = new DaoGenerico<>();
		DaoGenerico<Seguro> daoSeguro = new DaoGenerico<>();
		DaoGenerico<Segurado> daoSegurado = new DaoGenerico<>();

		login.setUsuario("ebix");
		login.setSenha("1234");

		daoLogin.saveOrUpdate(login);
		daoSeguro.saveOrUpdate(seguro);
		daoSegurado.saveOrUpdate(segurado);

		System.out.println("Foi");

	}
}
