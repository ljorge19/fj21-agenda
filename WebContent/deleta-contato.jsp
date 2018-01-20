
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import	url="cabecalho.jsp"	/>

	<h1>Deleta Contatos</h1>
	<hr />
	<form action="deletaContatos" method="post">
		    id: <input type="text" name="id" /><br /> <br /> <br />
		    <input type="submit" value="Deletar" />
	</form>
<c:import	url="rodape.jsp"	/>