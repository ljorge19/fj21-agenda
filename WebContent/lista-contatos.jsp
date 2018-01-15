
<%@	taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@	taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"	%>
<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao" />

   

	<c:import	url="cabecalho.jsp"	/>

	<table>
		<jsp:useBean id="contatoDao" class="br.com.caelum.jdbc.dao.ContatoDao" />
		<c:forEach items="${contatoDao.lista}" var="contato">
			<tr>
				<td>${contato.id}</td>
				<td>${contato.nome}</td>
				<td>
				    <c:if test="${not	empty	contato.email}">
						<a href="mailTo:${contato.email}">${contato.email}</a>
					</c:if>
					
					<c:if test="${empty	contato.email}">
						 email não cadastrado 
					</c:if>
				</td>
				<td>${contato.endereco}</td>
				<td>
				<fmt:formatDate	value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"	/>
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:import	url="rodape.jsp"	/>