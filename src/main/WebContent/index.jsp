<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscrição em Evento</title>
</head>
<body>
	<h1>Inscrição em Evento</h1>

	<p style="color: red;">${requestScope.erro}</p>

	<form action="${pageContext.request.contextPath}/ServletInscricao" method="post">
		<p>
			<label for="nome">Nome:</label><br>
			<input type="text" id="nome" name="nome" required>
		</p>

		<p>
			<label for="email">E-mail:</label><br>
			<input type="email" id="email" name="email" required>
		</p>

		<p>
			<label for="tipoParticipacao">Tipo de participação:</label><br>
			<select id="tipoParticipacao" name="tipoParticipacao" required>
				<option value="Presencial" selected>Presencial</option>
				<option value="Online">Online</option>
			</select>
		</p>

		<p>
			<label for="categoria">Categoria:</label><br>
			<select id="categoria" name="categoria" required>
				<option value="Aluno" selected>Aluno</option>
				<option value="Professor">Professor</option>
				<option value="Convidado">Convidado</option>
			</select>
		</p>

		<p><button type="submit">Realizar inscrição</button></p>
	</form>
	<p><a href="${pageContext.request.contextPath}/Minha-Inscricao.jsp">Minha inscrição</a></p>
	<p><a href="${pageContext.request.contextPath}/ServletLogout">Sair</a></p>
	<h3 align="center">Cauê Gayoso Tavares da Silva</h3>
</body>
</html>
