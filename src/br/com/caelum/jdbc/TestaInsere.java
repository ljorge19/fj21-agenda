package br.com.caelum.jdbc;


import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {
	
	public static void main(String[] args) {
		
		Contato	contato	=	new	Contato();
		contato.setNome("Leandro");
		contato.setEmail("leandro.jorge19@gmail.com");
		contato.setEndereco("av brasil 1598 cotia");
		Calendar dataNascimento = Calendar.getInstance();
		dataNascimento.set(1986, Calendar.OCTOBER, 03);
		contato.setDataNascimento(dataNascimento);
				
				
		//	grave	nessa	conexão!!!
		ContatoDao	dao	=	new	ContatoDao();
		
		
		//	método	elegante
		dao.adiciona(contato);
		System.out.println("Gravado!");
	}

}
