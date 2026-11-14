<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Resultado da Inscrição</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styling.css">
</head>
<body>
	<main class="container">
		<h1>Resultado da Inscrição</h1>

		<p class="aviso" ${empty requestScope.participante ? '' : 'hidden'}>
			Nenhuma inscrição foi realizada.
		</p>

		<div class="dados" ${empty requestScope.participante ? 'hidden' : ''}>
			<p><strong>Nome:</strong> ${requestScope.participante.nome}</p>
			<p><strong>E-mail:</strong> ${requestScope.participante.email}</p>
			<p><strong>Tipo de participação:</strong> ${requestScope.participante.tipoParticipacao}</p>
			<p><strong>Categoria:</strong> ${requestScope.participante.categoria}</p>
			<p><strong>Valor final:</strong> ${requestScope.valorFinalFormatado}</p>
		</div>

		<nav class="acoes">
			<a href="${pageContext.request.contextPath}/index.jsp">Nova inscrição</a>
			<a href="${pageContext.request.contextPath}/Minha-Inscricao.jsp">Minha inscrição</a>
		</nav>

		<h3 class="autor">Cauê Gayoso Tavares da Silva<br>Arthur José Soares de Oliveira</h3>
	</main>
</body>
</html>
