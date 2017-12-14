package br.com.wallef.sicop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.wallef.sicop.dao.BoiDao;
import br.com.wallef.sicop.modelo.Boi;

@Controller
@Transactional
public class BoiController {
	
	@Autowired
	BoiDao dao;
	
	@RequestMapping("novoAnimal")
	public String form() {
		return "boi/formulario";
	}
	
	@RequestMapping("cadastraAnimal")
	public String cadastra(Boi boi) {
		dao.cadastra(boi);
		return "redirect:listaAnimais";
	}
	
	@RequestMapping("listaAnimais")
	public String lista(Model model) {
		model.addAttribute("animais", dao.lista());
		return "boi/lista";
	}
	
	@RequestMapping("excluiAnimal")
	public String exclui(Boi boi) {
		dao.exclui(boi);
		return "redirect:listaAnimais";
	}
	
	@RequestMapping("mostraAnimal")
	public String mostra(int id, Model model) {
			model.addAttribute("animal", dao.busca(id));
		return "boi/atualiza";
	}
	
	@RequestMapping("atualizaAnimal")
	public String atualiza(Boi boi) {
		dao.atualiza(boi);
		return "redirect:listaAnimais";
	}
}
