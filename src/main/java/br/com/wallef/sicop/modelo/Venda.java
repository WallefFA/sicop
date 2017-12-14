package br.com.wallef.sicop.modelo;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Venda {

	@Id
	private int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Calendar getDataEntrada() {
		return dataEntrada;
	}

	public void setDataEntrada(Calendar dataEntrada) {
		this.dataEntrada = dataEntrada;
	}

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar dataVenda;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Calendar dataEntrada;
	
	@NotNull
	private double cotacao;
	@NotNull
	private double cotacao30dias;
	@NotNull
	private double cotacao60dias;
	
	
	public Calendar getDataVenda() {
		return dataVenda;
	}

	public void setDataVenda(Calendar dataVenda) {
		this.dataVenda = dataVenda;
	}
	
	public double getCotacao() {
		return cotacao;
	}

	public void setCotacao(double cotacao) {
		this.cotacao = cotacao;
	}

	public double getCotacao30dias() {
		return cotacao30dias;
	}

	public void setCotacao30dias(double cotacao30dias) {
		this.cotacao30dias = cotacao30dias;
	}

	public double getCotacao60dias() {
		return cotacao60dias;
	}

	public void setCotacao60dias(double cotacao60dias) {
		this.cotacao60dias = cotacao60dias;
	}

}
