
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import	url="cabecalho.jsp"	/>

	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato">
		    Nome..................: <input type="text"            name="nome" /><br /> <br />
		    E-mail.................: <input type="text"          name="email" /><br /> <br />
		    Endereço.............: <input type="text"        name="endereco" /><br /> <br />
		    Data Nascimento: <input type="text" name="dataNascimento" /><br /> <br />
		    <input type="submit" value="Gravar" />
	</form>
<c:import	url="rodape.jsp"	/>