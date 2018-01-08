package br.com.wallef.sicop.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.wallef.sicop.modelo.Boi;
import br.com.wallef.sicop.modelo.Venda;

@Repository
@Transactional
public class VendaDao {

	@PersistenceContext
	EntityManager manager;

	public void atualiza(Venda venda) {
		manager.merge(venda);
	}
	
	public Venda buscaPorId(int id) {
		return manager.find(Venda.class, id);
	}
	
	public Venda seleciona() {
		return (Venda) manager.createQuery("select v from Venda as v").getSingleResult();
	}
	
	@SuppressWarnings("unchecked")
	public int calculaTotalAnimais() {
		List<Boi> bois = manager.createQuery("select b from Boi as b").getResultList();
		
		return bois.size();
	}

	@SuppressWarnings("unchecked")
	public double calculaPesoMedio() {
		List<Boi> bois = manager.createQuery("select b from Boi as b").getResultList();

		Double pesoTotal = new Double(0);

		for (Boi x : bois) {
			pesoTotal += x.getPesoAtual();
		}
		
		return (pesoTotal / bois.size())/30;
	}

	@SuppressWarnings("unchecked")
	public double calculaValorVenda() {
		List<Boi> bois = manager.createQuery("select b from Boi as b").getResultList();
		Venda venda = (Venda) manager.createQuery("select v from Venda as v").getSingleResult();

		return (calculaPesoMedio() * (venda.getRendimento()/100)) * bois.size() * venda.getCotacao();
	}
	
	@SuppressWarnings("unchecked")
	public double calculaGanhoDePeso () {
		
		Venda venda = (Venda) manager.createQuery("select v from Venda as v").getSingleResult();
		List<Boi> bois = manager.createQuery("select b from Boi as b").getResultList();
		
		long dias = (venda.getDataVenda().getTimeInMillis() - venda.getDataEntrada().getTimeInMillis())/ (24*60*60*1000);
		
		
		double pesoGanho = 0;
		
		for(Boi x : bois) {
			pesoGanho += x.getPesoAtual() - x.getPesoDeEntrada();
		}
	
		return pesoGanho / bois.size() / dias;
	}
	
	public double calculaPesoMedio30dias() {	
		return (calculaPesoMedio() + (calculaGanhoDePeso() * 30 * 0.9)/30);
	}
	
	public double calculaPesoMedio60dias() {	
		return (calculaPesoMedio() + (calculaGanhoDePeso() * 60 * 0.9)/30);
	}
	
	@SuppressWarnings("unchecked")
	public double calculaValorVenda30dias() {
		List<Boi> bois = manager.createQuery("select b from Boi as b").getResultList();
		Venda venda = (Venda) manager.createQuery("select v from Venda as v").getSingleResult();	
		
		return (calculaPesoMedio30dias() * (venda.getRendimento()/100)) * bois.size() * venda.getCotacao30dias();
	}
	
	@SuppressWarnings("unchecked")
	public double calculaValorVenda60dias() {
		List<Boi> bois = manager.createQuery("select b from Boi as b").getResultList();
		Venda venda = (Venda) manager.createQuery("select v from Venda as v").getSingleResult();	
		
		return (calculaPesoMedio60dias() * (venda.getRendimento()/100)) * bois.size() * venda.getCotacao60dias();
	}
}
