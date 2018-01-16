
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import	url="cabecalho.jsp"	/>
	<%--	comentário em JSP aqui: nossa primeira página JSP --%>
	<%
		String mensagem = "Bem vindo ao sistema de agenda do FJ-21!";
	%>
	<%
		out.println(mensagem);
	%>
	<br />
	<%
		String desenvolvido = "Desenvolvido por	(SEU NOME AQUI)";
	%>
	<%=desenvolvido%>
	<br />
	<%
		System.out.println("Tudo foi executado!");
	%>
<c:import	url="rodape.jsp"	/>