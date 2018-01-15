package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.bcel.internal.generic.DALOAD;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

@WebServlet("/deletaContatos")
public class DeletaContatoServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String nome = "testeeeeeeeeee";

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		// busca o writer
		PrintWriter out = response.getWriter();
		// buscando os parâmetros no request
		String id = request.getParameter("id");

		// monta um objeto contato
		Contato contato = new Contato();
		contato.setId(Long.parseLong(id));

		//
		ContatoDao dao = new ContatoDao();

		/*
		 * Contato resultado = dao.selecionaId(contato); nome = resultado.getNome();
		 */

		List<Contato> contatos = dao.getLista();
		for (Contato contato2 : contatos) {
			if (contato2.getId() == Long.parseLong(id)) {
				nome = contato2.getNome();
			}

		}



		dao.remove(contato);
		// imprime o nome do contato que foi deletado
		out.println("<html>");
		out.println("<body>");
		out.println("Contato	" + nome + "	deletado	com	sucesso");
		out.println("</body>");
		out.println("</html>");
	}
}
