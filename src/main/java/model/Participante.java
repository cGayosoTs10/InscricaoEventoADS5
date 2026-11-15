package model;

/** Autores: Cauê Gayoso Tavares da Silva 
 * 			 Arthur José Soares de Oliveira 
 * **/

import java.io.Serializable;

public class Participante implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String nome;
	private String email;
	private String tipoParticipacao;
	private String categoria;
	
	public Participante() {}
	
	public Participante(String nome, String email, String tipoParticipacao, String categoria) {
		this.nome = nome;
		this.email = email;
		this.tipoParticipacao = tipoParticipacao;
		this.categoria = categoria;
	}
	
	public String getNome() { return this.nome; }
	public void setNome(String nome) { this.nome = nome; }
	
	public String getEmail() { return this.email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getTipoParticipacao() { return this.tipoParticipacao; }
	public void setTipoParticipacao(String tipoParticipacao) { this.tipoParticipacao = tipoParticipacao; }
	
	public String getCategoria() { return this.categoria; }
	public void setCategoria(String categoria) { this.categoria = categoria; }
	
}
