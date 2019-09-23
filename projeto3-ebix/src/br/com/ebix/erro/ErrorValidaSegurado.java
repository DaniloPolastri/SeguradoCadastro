package br.com.ebix.erro;

import java.util.ArrayList;

import br.com.ebix.entity.Segurado;

public class ErrorValidaSegurado {
	public ArrayList<String> validacao(Segurado s) {

		ArrayList<String> erros = new ArrayList<String>();
		
		if (s ==  null) {
			return erros;
		}

		if (s.getNome() == null || "".equals(s.getNome())) {
			erros.add("Nome obrigatorio");
		}
		if (s.getCpf() == null || s.getCpf().length() != 11) {
			erros.add("CPF incorreto ou com digitos menores ou maiores que 11");
		}
		if (s.getRg() == null || s.getRg().length() != 9) {
			erros.add("RG incorreto ou com digitos menores ou maiores que 9");
		}
		if(s.getSexo() == null) {
			erros.add("Selecione um sexo");
		}
		if(s.getCorrentista() == null) {
			erros.add("Selecione uma opção de correntista");
		}
		if(s.getDiasDeVisita() == null ) {
			erros.add("Digite um dia para a visita");
		}
		return erros;
	}
}
