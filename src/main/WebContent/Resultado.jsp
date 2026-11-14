<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado da Inscrição</title>
</head>
<body>
	<h1>Resultado da Inscrição</h1>

	<p ${empty requestScope.participante ? '' : 'hidden'}>
		Nenhuma inscrição foi realizada.
	</p>

	<div ${empty requestScope.participante ? 'hidden' : ''}>
		<p><strong>Nome:</strong> ${requestScope.participante.nome}</p>
		<p><strong>E-mail:</strong> ${requestScope.participante.email}</p>
		<p><strong>Tipo de participação:</strong> ${requestScope.participante.tipoParticipacao}</p>
		<p><strong>Categoria:</strong> ${requestScope.participante.categoria}</p>
		<p><strong>Valor final:</strong> ${requestScope.valorFinalFormatado}</p>
	</div>

	<p>
		<a href="${pageContext.request.contextPath}/index.jsp">Nova inscrição</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/Minha-Inscricao.jsp">Minha inscrição</a>
	</p>
	<h3 align="center">Cauê Gayoso Tavares da Silva</h3>
</body>
</html>
