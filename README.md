# workshop-rest-spring

Este é um fork do projeto Workshop Rest com Spring da Escola de cursos on-line Algaworks. Neste workshop é dado uma introdução
sobre como desenvolver uma API Rest usando Spring Boot com o banco de dados H2, mas este último é um banco de dados em memória,
onde para um curso on-line é muito útil usar este tipo de recurso, mas em projetos comerciais, é necessário gravar os dados
em disco, e neste fork, o objetivo é fazer a migração do H2 para o MySQL, usar o Flyway para gerenciar uma possível evolução
da modelagem de dados, e adicionar consultas com paginação, e outras implmetações que venham a ser pertinentes em uma API.
