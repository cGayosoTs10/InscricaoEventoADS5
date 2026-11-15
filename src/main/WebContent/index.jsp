<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inscrição em Evento</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styling.css">
</head>
<body>
	<main class="container">
		<h1>Inscrição em Evento</h1>

		<p class="erro">${requestScope.erro}</p>

		<form action="${pageContext.request.contextPath}/ServletInscricao" method="post">
			<p>
				<label for="nome">Nome:</label>
				<input type="text" id="nome" name="nome" required>
			</p>

			<p>
				<label for="email">E-mail:</label>
				<input type="email" id="email" name="email" required>
			</p>

			<p>
				<label for="tipoParticipacao">Tipo de participação:</label>
				<select id="tipoParticipacao" name="tipoParticipacao" required>
					<option value="Presencial" selected>Presencial</option>
					<option value="Online">Online</option>
				</select>
			</p>

			<p>
				<label for="categoria">Categoria:</label>
				<select id="categoria" name="categoria" required>
					<option value="Aluno" selected>Aluno</option>
					<option value="Professor">Professor</option>
					<option value="Convidado">Convidado</option>
				</select>
			</p>

			<p><button type="submit">Realizar inscrição</button></p>
		</form>

		<nav class="acoes">
			<a href="${pageContext.request.contextPath}/Minha-Inscricao.jsp">Minha inscrição</a>
		</nav>

		<h3 class="autor">Cauê Gayoso Tavares da Silva<br>Arthur José Soares de Oliveira</h3>
	</main>
</body>
</html>
