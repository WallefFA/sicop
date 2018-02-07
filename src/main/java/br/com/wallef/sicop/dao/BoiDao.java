package br.com.wallef.sicop.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.wallef.sicop.modelo.Boi;

@Repository
public class BoiDao {
	
	@PersistenceContext
	EntityManager manager;

	public void cadastra(Boi boi) {
		manager.persist(boi);
	}

	public void atualiza(Boi boi) {
		manager.merge(boi);
		
	}

	public Boi busca(int id) {
		return manager.find(Boi.class, id);
	}

	public void exclui(Boi boi) {
		Boi boiAExcluir = busca(boi.getId());
		manager.remove(boiAExcluir);
		
	}

	@SuppressWarnings("unchecked")
	public List<Boi> lista() {
		return manager.createQuery("select b from Boi b").getResultList();
	}
	
}
