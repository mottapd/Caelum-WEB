<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>

	<head>
		<script type="text/javascript" src="resources/js/jquery.js"></script>
	</head>
	
	<body>
	
		<script type="text/javascript">
			function finalizaAgora(id) {
				$.post("finalizaTarefa", {'id' : id}, function(callback_finalizada) {
					alert(callback_finalizada);
					$("#tarefa_"+id).html(callback_finalizada);
				});
			}
		</script>
	
		<a href="novaTarefa">Criar nova tarefa</a>
		
		<br /> <br />
		
		<table>
			<tr>
				<th>Id</th>
				<th>Descrição</th>
				<th>Finalizado?</th>
				<th>Data de finalização</th>
			</tr>
			
			<c:forEach items="${tarefas}" var="tarefa">
				<tr id="tarefa_${tarefa.id}">
					<td>${tarefa.id}</td>
					<td>${tarefa.descricao}</td>
					
					<c:if test="${tarefa.finalizado eq false}">
						<td>
							<a href="#" onClick="finalizaAgora(${tarefa.id})">
							Finaliza agora!
							</a>
						</td>
					</c:if>
					
					<c:if test="${tarefa.finalizado eq true}">
						<td>Finalizado</td>
					</c:if>
					<td>
					<fmt:formatDate
							value="${tarefa.dataFinalizacao.time}"
							pattern="dd/MM/yyyy"/>
					</td>
					<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
					<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>