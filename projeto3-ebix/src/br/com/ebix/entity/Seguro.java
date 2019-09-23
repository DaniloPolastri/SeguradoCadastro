package br.com.ebix.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;


@Entity
public class Seguro implements EntidadeBase {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer identificacao;
	@Column(nullable = false)
	private String seguro;
	@Column(nullable = false)
	private Double valor;
	
	@ManyToMany(mappedBy = "seguros", fetch = FetchType.EAGER)
	private List<Segurado> segurados = new ArrayList<Segurado>();
	
	public String getSeguro() {
		return seguro;
	}

	public void setSeguro(String seguro) {
		this.seguro = seguro;
	}

	public Integer getIdentificacao() {
		return identificacao;
	}

	public void setIdentificacao(Integer identificacao) {
		this.identificacao = identificacao;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	@Override
	public Integer getId() {
		return null;
	}

}
