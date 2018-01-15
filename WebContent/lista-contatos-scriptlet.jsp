
<%@	page
	import="java.util.*,
			br.com.caelum.jdbc.dao.*,
			br.com.caelum.jdbc.modelo.*"%>
<html>
<head>
<meta charset="utf-8">
<head>
<body>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			for (Contato contato : contatos) {
		%>
		<tr>
			<td><%=contato.getNome()%></td>
			<td><%=contato.getEmail()%></td>
			<td><%=contato.getEndereco()%></td>
			<td><%=contato.getDataNascimento().getTime()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>