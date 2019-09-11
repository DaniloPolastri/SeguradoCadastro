CREATE DATABASE projeto_ebix;
USE projeto_ebix; 
CREATE TABLE cliente (
	idClient INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL,
    sexo VARCHAR(8) NOT NULL,
    correntista VARCHAR(10) NOT NULL,
    diaVisita VARCHAR(10) NOT NULL,
    seguro VARCHAR(5) NOT NULL
);