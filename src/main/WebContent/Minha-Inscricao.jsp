<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Minha Inscrição</title>
</head>
<body>
	<h1>Minha Inscrição</h1>

	<p ${empty sessionScope.participante ? '' : 'hidden'}>
		Nenhuma inscrição encontrada na sessão.
	</p>

	<div ${empty sessionScope.participante ? 'hidden' : ''}>
		<p><strong>Nome:</strong> ${sessionScope.participante.nome}</p>
		<p><strong>E-mail:</strong> ${sessionScope.participante.email}</p>
		<p><strong>Tipo de participação:</strong> ${sessionScope.participante.tipoParticipacao}</p>
		<p><strong>Categoria:</strong> ${sessionScope.participante.categoria}</p>
		<p><strong>Valor final:</strong> ${sessionScope.valorFinalFormatado}</p>
	</div>

	<p>
		<a href="${pageContext.request.contextPath}/index.jsp">Nova inscrição</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/ServletLogout">Sair</a>
	</p>
	<h3 align="center">Cauê Gayoso Tavares da Silva</h3>
</body>
</html>
