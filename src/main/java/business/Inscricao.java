package business;

/** Autores: Cauê Gayoso Tavares da Silva 
 * 			 Arthur José Soares de Oliveira 
 * **/


import java.util.Locale;
import model.Participante;

public class Inscricao {
	private static final double VALOR_ALUNO = 30.00;
	private static final double VALOR_PROFE = 50.00;
	private static final double VALOR_CONVI = 80.00;
	private static final double DESCONTO_ON = 0.20;
	
	private Participante participante;
	
	public Inscricao(Participante participante) {
		this.participante = participante;
	}
	
	public double getValorBase() {
		if (participante == null) { throw new IllegalArgumentException("Participante não informado ou inexistente"); }
		
		String categoria = participante.getCategoria();
		if (categoria == null || categoria.isBlank()) { throw new IllegalArgumentException("Categoria não informada ou inexistente"); }

	    return switch (categoria.toLowerCase(Locale.ROOT)) {
        	case "aluno" -> VALOR_ALUNO;
        	case "professor" -> VALOR_PROFE;
        	case "convidado" -> VALOR_CONVI;
        	default -> throw new IllegalArgumentException("Categoria inválida: " + categoria);
	    };
		
	}
	
	public double getDiscount() {
		if (participante == null) { throw new IllegalArgumentException("Participante não informado ou inexistente"); }
		
		String tipo = participante.getTipoParticipacao();
		if (tipo == null || tipo.isBlank()) { throw new IllegalArgumentException("Tipo de participação não informado ou inexistente"); }
		
		return switch (tipo.toLowerCase(Locale.ROOT)) {
        	case "online" -> DESCONTO_ON;
        	case "presencial" -> 0.0;
        	default -> throw new IllegalArgumentException("Tipo inválido: " + tipo);
		};
	}
	
	public double calcValorFinal() { return getValorBase() * ( 1.0 - getDiscount() ); }

	public Participante getParticipante() {
		return participante;
	}
}
