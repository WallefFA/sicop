package br.com.wallef.sicop.controller;

import java.text.ParseException;
import java.util.Calendar;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import javax.persistence.Persistence;
import javax.persistence.Query;

import br.com.wallef.sicop.modelo.Venda;

public class teste {

	public static void main(String[] args) throws ParseException {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory("sicop");
		EntityManager manager = factory.createEntityManager();

		Query query1 = manager.createQuery("select v from Venda as v");

		Venda venda = (Venda) query1.getSingleResult();
		
		Calendar b = Calendar.getInstance();

		b.set(2018, 1, 28);
		
		long  x = (b.getTimeInMillis() - venda.getDataVenda().getTimeInMillis())/ (24*60*60*1000);
		
		int z = 4;
		
		System.out.println(x - z);
		System.out.println(x); 
	}

}
