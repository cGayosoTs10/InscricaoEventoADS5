<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Minha Inscrição</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Styling.css">
</head>
<body>
	<main class="container">
		<h1>Minha Inscrição</h1>

		<p class="aviso" ${empty sessionScope.participante ? '' : 'hidden'}>
			Nenhuma inscrição encontrada na sessão.
		</p>

		<div class="dados" ${empty sessionScope.participante ? 'hidden' : ''}>
			<p><strong>Nome:</strong> ${sessionScope.participante.nome}</p>
			<p><strong>E-mail:</strong> ${sessionScope.participante.email}</p>
			<p><strong>Tipo de participação:</strong> ${sessionScope.participante.tipoParticipacao}</p>
			<p><strong>Categoria:</strong> ${sessionScope.participante.categoria}</p>
			<p><strong>Valor final:</strong> ${sessionScope.valorFinalFormatado}</p>
		</div>

		<nav class="acoes">
			<a href="${pageContext.request.contextPath}/index.jsp">Nova inscrição</a>
		</nav>

		<h3 class="autor">Cauê Gayoso Tavares da Silva<br>Arthur José Soares de Oliveira</h3>
	</main>
</body>
</html>
