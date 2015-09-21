<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<html>
	<head>
		<link href="jquery/css/jquery-ui.css" rel="stylesheet">
		<script src="jquery/js/jquery.js"></script>
		<script src="jquery/js/jquery-ui.js"></script>
	</head>

	<body>
		<h1>Adiciona Contatos</h1>
		<hr />
		<form action="adicionaContato">
			Nome: <input type="text" name="nome" /><br />
			E-mail: <input type="text" name="email" /><br />
			Endereco: <input type="text" name="endereco" /><br />
			Data Nascimento:  <caelum:campoData id="dataNascimento" /><br />
			<input type="submit" value="Gravar" />
		</form>
	</body>
</html>