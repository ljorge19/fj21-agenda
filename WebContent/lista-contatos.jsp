
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%-- <jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao" /> --%>



<c:import url="cabecalho.jsp" />

<table>
	<%--<jsp:useBean id="contatoDao" class="br.com.caelum.jdbc.dao.ContatoDao" />
	    <c:forEach items="${contatoDao.lista}" var="contato"> --%>
	    
	    
		<c:forEach	var="contatos" items="${contatosAbacaxi}">
	
		<tr>
			<td>${contatos.id}</td>
			<td>${contatos.nome}</td>
			<td><c:if test="${not	empty	contatos.email}">
					<a href="mailTo:${contatos.email}">${contatos.email}</a>
				</c:if> <c:if test="${empty	contatos.email}">
						 email não cadastrado 
					</c:if></td>
			<td>${contatos.endereco}</td>
			<td><fmt:formatDate value="${contatos.dataNascimento.time}"
					pattern="dd/MM/yyyy" /></td>
			<td>
			<a href="mvc?logica=RemoveContatoLogic&id=${contatos.id}">Remover</a>
			</td>
		</tr>
	</c:forEach>
</table>
<c:import url="rodape.jsp" />