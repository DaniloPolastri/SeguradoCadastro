package com.ebix.test;

import java.util.ArrayList;

import com.ebix.entity.Segurado;

public class ErrorValida {
	public ArrayList<String> validacao(Segurado cliente) {

		ArrayList<String> erros = new ArrayList<String>();

		if (cliente.getNome() == null || "".equals(cliente.getNome())) {
			erros.add("Nome obrigatorio");
		}
		if (cliente.getCpf() == null || cliente.getCpf().length() != 11) {
			erros.add("CPF incorreto ou com digitos menores ou maiores que 11");
		}
		if (cliente.getRg() == null || cliente.getRg().length() != 9) {
			erros.add("RG incorreto ou com digitos menores ou maiores que 9");
		}
		if(cliente.getSexo() == null) {
			erros.add("Selecione um sexo");
		}
		if(cliente.getSeguros() == null) {
			erros.add("Selecione um seguro");
		}
		if(cliente.getCorrentista() == null) {
			erros.add("Selecione uma opção de correntista");
		}
		if(cliente.getDiasVisita() == null ) {
			erros.add("Digite um dia para a visita");
		}
		return erros;
	}
}
