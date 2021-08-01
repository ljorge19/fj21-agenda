package br.com.caelum.mvc.logica;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;
import br.com.caelum.mvc.Logica;

public class ListaContatosLogic implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		Connection	connection	=	(Connection) req.getAttribute("conexao");
		List<Contato> contatos =  new ContatoDao().getLista();
		
		req.setAttribute("contatosAbacaxi", contatos);
		return "lista-contatos.jsp";
	}
}
