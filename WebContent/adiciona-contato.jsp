
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<c:import url="cabecalho.jsp" />

<h1>Adiciona Contatos</h1>
<hr />
<form action="adicionaContato">
	Nome..................: <input type="text" name="nome" /><br /> <br />
	E-mail.................: <input type="text" name="email" /><br /> <br />
	Endere�o.............: <input type="text" name="endereco" /><br /> <br />
	Data Nascimento:<caelum:campoData id="dataNascimento" />
	<br /> <br /> <input type="submit" value="Gravar" />
</form>
<c:import url="rodape.jsp" />