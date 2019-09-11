package com.ebix.persistence;

import com.ebix.entity.Segurado;

public class SeguradoDao extends Dao {
	public void criar(Segurado s) throws Exception {
		try {
			abrirConexao();
			ps = conexao.prepareStatement("INSERT INTO cliente values (null,?,?,?,?,?,?,?)");
			ps.setString(1, s.getNome());
			ps.setString(2, s.getCpf());
			ps.setString(3, s.getRg());
			ps.setString(4, s.getSexo());
			ps.setString(5, s.getCorrentista());
			StringBuffer buffer = new StringBuffer();
			StringBuffer buffer2 = new StringBuffer();
			for (String seguro : s.getSeguros()) {
				buffer.append(seguro);
				buffer.append(",");
			}
		
			for (String dias : s.getDiasVisita()) {
				buffer2.append(dias);
				buffer2.append(",");
			}
			ps.setNString(6, buffer2.toString());
			ps.setNString(7, buffer.toString());
			ps.execute();
			fechaConexao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

//	
//	public static void main(String[] args) throws Exception {
//		Segurado segurado = new Segurado("Pedro", "14941705742", "548798875", "Masculino", "Vida", "Sim", "Segunda");
//		SeguradoDao dao = new SeguradoDao();
//		dao.criar(segurado);
//	}
