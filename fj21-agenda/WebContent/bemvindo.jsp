<html>
<body>

	<%@ page
		import="java.util.*, 
		br.com.caelum.jdbc.dao.*, 
		br.com.caelum.jdbc.modelo.*"%>

	<%-- comentario em jsp aqui --%>
	<%
		String mensagem = "Bem vindo ao sistema de agenda do curso FJ21";
	%>
	<%
		out.println(mensagem);
	%>
	<br />
	<%
		String desenvolvido = "Desenvolvido por Bruno";
	%>
	<%=desenvolvido%>
	<br />
	<%
		System.out.println("Executado no console");
		out.println("Tudo foi executado");
	%>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			System.out.println("----------------SELECT----------------");
			for (Contato cnt : contatos) {
		%>
			<tr>
				<td><%=cnt.getId()%></td>
				<td><%=cnt.getNome()%></td>
				<td><%=cnt.getEndereco()%></td>
				<td><%=cnt.getEmail()%></td>
				<td><%=cnt.getDataNascimento().getTime()%></td>
			</tr>
		<%
			}
		%>
	</table>
</body>
</html>