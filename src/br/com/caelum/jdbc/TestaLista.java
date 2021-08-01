package br.com.caelum.jdbc;


import java.text.SimpleDateFormat;
import java.util.List;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaLista {
	public static void main(String[] args) {
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();

		for (Contato contato : contatos) {
			System.out.println("ID:	" + contato.getId());
			System.out.println("Nome:	" + contato.getNome());
			System.out.println("Email:	" + contato.getEmail());
			System.out.println("Endereço:	" + contato.getEndereco());
			SimpleDateFormat formatter1 = new SimpleDateFormat("dd/MM/yyyy");
			String formatada = formatter1.format(contato.getDataNascimento().getTime());
			System.out.println("Data	de	Nascimento:	" + formatada+ "\n");
			
		}
	}
}
