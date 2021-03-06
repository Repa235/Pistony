  package it.unirc.pistony.pojo.Componente;
// Generated 17 dic 2020, 16:53:34 by Hibernate Tools 5.4.21.Final

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import it.unirc.pistony.pojo.Acquisto.Acquisto;

/**
 * Componente generated by hbm2java
 */
public class Componente implements java.io.Serializable {

	private int idcomponente;
	private Integer categoria;
	private String marca;
	private Integer quantDisponibile;
	private String nome;
	private double prezzo;
	private Set<Acquisto> acquisti = new HashSet<Acquisto>(0);

	public Componente() {
	}

	public Componente(int idcomponente) {
		this.idcomponente = idcomponente;
	}

	public Componente(int idcomponente, Integer categoria, String marca, Integer quantDisponibile, String nome,
			double prezzo) {
		this.idcomponente = idcomponente;
		this.categoria = categoria;
		this.marca = marca;
		this.quantDisponibile = quantDisponibile;
		this.nome = nome;
		this.prezzo = prezzo;
	}

	public int getIdcomponente() {
		return this.idcomponente;
	}

	public void setIdcomponente(int idcomponente) {
		this.idcomponente = idcomponente;
	}

	public Integer getCategoria() {
		return this.categoria;
	}

	public void setCategoria(Integer categoria) {
		this.categoria = categoria;
	}

	public String getMarca() {
		return this.marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public Integer getQuantDisponibile() {
		return this.quantDisponibile;
	}

	public void setQuantDisponibile(Integer quantDisponibile) {
		this.quantDisponibile = quantDisponibile;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public Set<Acquisto> getAcquisti() {
		return acquisti;
	}

	public void setAcquisti(Set<Acquisto> acquisti) {
		this.acquisti = acquisti;
	}



}
