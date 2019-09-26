package br.com.ebix.entity;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Segurado implements EntidadeBase {
	@Column(name = "seguradoid")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	@Column(unique = true)
	private String cpf;
	@Column(nullable = false)
	private String rg;
	@Column(nullable = false)
	private String sexo;
	@Column(nullable = false)
	private String correntista;
	@Column(nullable = false)
	private String diasDeVisita;
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataDeCadastro;
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataDeAlteracao;
	@Column(nullable = false)
	private String data_nasc;

	@ManyToMany
	@JoinTable(name="table_relacionamento", joinColumns = {
			@JoinColumn(name="id_segurado" , referencedColumnName = "seguradoid")} , inverseJoinColumns = {
			@JoinColumn(name="id_seguro" , referencedColumnName = "seguroid")})
	private List<Seguro> seguros = new ArrayList<Seguro>();
	
	public List<Seguro> getSeguros() {
		return seguros;
	}

	public void setSeguros(List<Seguro> seguros) {
		this.seguros = seguros;
	}

	public String getData_nasc() {
		return data_nasc;
	}

	public void setData_nasc(String data_nasc) {
		this.data_nasc = data_nasc;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getCorrentista() {
		return correntista;
	}

	public void setCorrentista(String correntista) {
		this.correntista = correntista;
	}

	public String getDiasDeVisita() {
		return diasDeVisita;
	}

	public void setDiasDeVisita(String diasDeVisita) {
		this.diasDeVisita = diasDeVisita;
	}

	public Date getDataDeCadastro() {
		return dataDeCadastro;
	}

	public void setDataDeCadastro(Date dataDeCadastro) {
		this.dataDeCadastro = dataDeCadastro;
	}

	public Date getDataDeAlteracao() {
		return dataDeAlteracao;
	}

	public void setDataDeAlteracao(Date dataDeAlteracao) {
		this.dataDeAlteracao = dataDeAlteracao;
	}
	
	
	
}
