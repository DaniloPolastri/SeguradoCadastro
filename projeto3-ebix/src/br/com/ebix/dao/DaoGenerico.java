package br.com.ebix.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.com.ebix.connection.ConnectionFactory;
import br.com.ebix.entity.EntidadeBase;
import br.com.ebix.entity.Segurado;
import br.com.ebix.entity.Seguro;

public class DaoGenerico<T extends EntidadeBase> {

	private static EntityManager em = ConnectionFactory.getEntityManager();
	TypedQuery<Seguro> query;
	TypedQuery<Segurado> query2;
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
	
	public List<Seguro> findAllSeguro() {
		query = em.createQuery("select seg from Seguro as seg", Seguro.class);
		List<Seguro> seguros = query.getResultList();
		return seguros;
		
	}

	public List<Segurado> findAllSegurado() {
		query2 = em.createQuery("select seg from Segurado as seg", Segurado.class);
		List<Segurado> segurados = query2.getResultList();
		return segurados;
		
	}
}
