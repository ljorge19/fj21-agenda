package br.com.caelum.jdbc;

import java.util.Calendar;


import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TesteAtualiza {
	public static void main(String[] args) {
		ContatoDao dao = new ContatoDao();
		Contato contato = new Contato();
		
		
		contato.setId((long) 1);
		contato.setNome("Leandro de Jesus da silva");
		contato.setEndereco("av brasil 1598 bloco 3 ap 101");
		contato.setEmail("leandro.jorge999@gmail.com");
		Calendar dataNascimento = Calendar.getInstance();
		dataNascimento.set(2018, Calendar.OCTOBER, 03);
		contato.setDataNascimento(dataNascimento);
		
		
		dao.altera(contato);
		
		System.out.println("Alterado com sucesso!!!");
		
			}

}
