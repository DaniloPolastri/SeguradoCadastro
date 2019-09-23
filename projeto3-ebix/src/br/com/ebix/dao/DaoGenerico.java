package br.com.ebix.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.ebix.connection.ConnectionFactory;
import br.com.ebix.entity.EntidadeBase;

public class DaoGenerico<T extends EntidadeBase> {

	private static EntityManager em = ConnectionFactory.getEntityManager();
	
	public T findById(Class<T> classe, Integer id) {
		return em.find(classe, id);
	}
	
	public void saveOrUpdate(T obj) {
		try {
			
			em.getTransaction().begin();
			if (obj.getId() == null) {
				em.persist(obj);
			} else {
				em.merge(obj);
			}
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public void remove(Class<T> classe, Integer id){
		T t = findById(classe, id);
		
		try {
			em.getTransaction().begin();
			em.remove(t);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}
	
	public List<T> findAll(){
		return em.createQuery("SELECT * FROM Segurado").getResultList(); 
	}
}
