package servlets;

/** Autores: Cauê Gayoso Tavares da Silva 
 * 			 Arthur José Soares de Oliveira 
 * **/


import java.io.IOException;
import java.util.Locale;

import business.Inscricao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Participante;

@WebServlet("/ServletInscricao")
public class ServletsInscricao extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String tipoParticipacao = request.getParameter("tipoParticipacao");
		String categoria = request.getParameter("categoria");

		try {
			Participante participante = new Participante(nome, email, tipoParticipacao, categoria);
			Inscricao inscricao = new Inscricao(participante);
			double valorFinal = inscricao.calcValorFinal();
			String valorFinalFormatado = String.format(Locale.forLanguageTag("pt-BR"), "R$ %.2f", valorFinal);

			request.setAttribute("participante", participante);
			request.setAttribute("valorFinal", valorFinal);
			request.setAttribute("valorFinalFormatado", valorFinalFormatado);

			HttpSession session = request.getSession();
			session.setAttribute("participante", participante);
			session.setAttribute("valorFinal", valorFinal);
			session.setAttribute("valorFinalFormatado", valorFinalFormatado);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/Resultado.jsp");
			dispatcher.forward(request, response);
		} catch (IllegalArgumentException e) {
			request.setAttribute("erro", e.getMessage());
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);
		}
	}
}
