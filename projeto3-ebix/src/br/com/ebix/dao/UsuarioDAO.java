package br.com.ebix.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.ebix.connection.ConnectionFactory;
import br.com.ebix.entity.Login;

public class UsuarioDAO {
	static EntityManager manager = new ConnectionFactory().getEntityManager();
	
	public Login existeLogin(Login login) {
		try {
			
			if(manager == null || !manager.isOpen()) {
				manager = new ConnectionFactory().getEntityManager();
			}
			
			manager.getTransaction().begin();
			List loginList = manager.createQuery("SELECT u FROM Login as u WHERE u.usuario= :login and u.senha= :senha")
					.setParameter("login", login.getUsuario()).setParameter("senha", login.getSenha()).getResultList();
			
			if(loginList != null && loginList.size() == 1) {
				Login loginvalido;
				loginvalido = (Login) loginList.get(0);
				
				if(loginvalido != null) {
					return loginvalido;
				} else{
					return null;
				}
			} else {
				return null;
			}
		} catch (Exception e) {
			return null;
		} finally {
			manager.close();
		}
	}
	
}
