package br.com.wallef.sicop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.wallef.sicop.dao.VendaDao;
import br.com.wallef.sicop.modelo.Venda;

@Controller
public class VendaController {

	@Autowired
	VendaDao dao;
	
	@RequestMapping("relatorios")
	public String relatorios(Model model) {
		model.addAttribute("venda", dao.seleciona());
		return "venda/relatorios";
	}
	
	@RequestMapping("mostraVenda")
	public String mostra(int id, Model model) {
		model.addAttribute("venda", dao.buscaPorId(id));
		return "venda/formulario";
	}
	
	@RequestMapping("atualizaVenda")
	public String atualiza( Venda venda) {
		dao.atualiza(venda);
		return "redirect:geraRelatorio";
	}

	@RequestMapping("geraRelatorio")
	public String geraRelatorio(Model model) {
		model.addAttribute("valorVenda", dao.calculaValorVenda());
		model.addAttribute("pesoMedio", dao.calculaPesoMedio());
		model.addAttribute("totalAnimais", dao.calculaTotalAnimais());
		return "venda/relatorio-venda";
	}
	
	@RequestMapping("mostraVendaFuturo")
	public String mostraFuturo(int id, Model model) {
		model.addAttribute("venda", dao.buscaPorId(id));
		return "venda/formulario-futuro";
	}
	
	@RequestMapping("atualizaVendaFuturo")
	public String atualizaFutura( Venda venda) {
		dao.atualiza(venda);
		return "redirect:geraRelatorioFuturo";
	}
	
	@RequestMapping("geraRelatorioFuturo")
	public String geraRelatorioFuturo(Model model) {
		model.addAttribute("valorVenda30dias", dao.calculaValorVenda30dias());
		model.addAttribute("valorVenda60dias", dao.calculaValorVenda60dias());
		model.addAttribute("pesoMedio30dias", dao.calculaPesoMedio30dias());
		model.addAttribute("pesoMedio60dias", dao.calculaPesoMedio60dias());
		model.addAttribute("totalAnimais", dao.calculaTotalAnimais());
		return "venda/relatorio-venda-futuro";
	}
}
