
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<c:import url="cabecalho.jsp" />
<head>
<meta charset="utf-8">
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
<head>
<h1>Adiciona Contatos</h1>
<hr />
<form action="adicionaContato">
	Nome..................: <input type="text" name="nome" /><br /> <br />
	E-mail.................: <input type="text" name="email" /><br /> <br />
	Endereço.............: <input type="text" name="endereco" /><br /> <br />
	Data Nascimento:<caelum:campoData id="dataNascimento" />
	<br /> <br /> <input type="submit" value="Gravar" />
</form>
<c:import url="rodape.jsp" />