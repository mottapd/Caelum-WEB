<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
	<body>
		<!-- cria o DAO (substituido pelo MVC) -->
		<!--<jsp:useBean id="dao" class="br.com.caelum.jdbc.dao.ContatoDao"/>-->
		<table>
			<!-- percorre contatos montando as linhas da tabela -->
			<c:forEach var="contato" items="${contatos}">
				<tr>
					<td>${contato.nome}</td>
					<td>${contato.email}</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>
					<td>${contato.dataNascimento.time}</td>
					<td>
						<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>