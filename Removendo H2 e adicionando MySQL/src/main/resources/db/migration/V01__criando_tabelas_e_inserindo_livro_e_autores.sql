CREATE TABLE autor(
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(200) NOT NULL,
	nascimento DATE,
	nacionalidade VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO autor (nome, nacionalidade) 
values ('Joshua Bloch', 'Americana');

INSERT INTO autor (nome, nacionalidade) 
values ('Ian Sommerville', 'Americana');

INSERT INTO autor (nome, nacionalidade) 
values ('Andrew Stuart Tanenbaum', 'Americana');

INSERT INTO autor (nome, nacionalidade) 
values ('Ricardo Lecheta', 'Brasileira');

INSERT INTO autor (nome, nacionalidade) 
values ('Eduardo Bezerra', 'Brasileira');

CREATE TABLE livro(
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(200) NOT NULL,
	publicacao DATE NOT NULL,
	editora VARCHAR(100) NOT NULL,
	resumo TEXT NOT NULL,
	id_autor BIGINT(20) NOT NULL,
	FOREIGN KEY (id_autor) REFERENCES autor(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO livro (nome, publicacao, editora, resumo, id_autor) 
values ('Effective Java 3rd Edition', '2017-12-28', 'Addison-Wesley Professional', 'The Definitive Guide to Java Platform Best Practices—Updated for Java 7, 8, and 9', 1);

INSERT INTO livro (nome, publicacao, editora, resumo, id_autor) 
values ('Software Engineering (10th Edition)', '2015-03-14', 'Pearson', 'The Fundamental Practice of Software Engineering', 2);

INSERT INTO livro (nome, publicacao, editora, resumo, id_autor) 
values ('Computer Networks (5th Edition)', '2010-10-5', 'Pearson', 'Computer Networks, 5/e is appropriate for Computer Networking or Introduction to Networking courses at both the undergraduate and graduate level in Computer Science, Electrical Engineering, CIS, MIS, and Business Departments', 3);

INSERT INTO livro (nome, publicacao, editora, resumo, id_autor) 
values ('Google Android', '2015-11-30', ' Novatec', ' A obra traz todos os passos necessários para desenvolver aplicativos para smartphones, tablets e relógios', 4);

INSERT INTO livro (nome, publicacao, editora, resumo, id_autor)
values ('Princípios de Análise e Projetos de Sistemas com UML', '2014-12-9', 'Elsevier', 'Este livro tem o propósito de apresentar, por meio de um estilo objetivo e prático, os principais conceitos relacionados à análise e ao projeto de sistemas.', 5);

CREATE TABLE comentario(
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	texto TEXT NOT NULL,
	usuario VARCHAR(50) NOT NULL,
	data DATE NOT NULL,
	id_livro BIGINT(20) NOT NULL,
	FOREIGN KEY (id_livro) REFERENCES livro(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
