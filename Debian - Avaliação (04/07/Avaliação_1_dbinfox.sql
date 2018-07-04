use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_usuarios(iduser int primary key,
usuario varchar(50) not null,
login varchar(50) not null unique,
senha varchar(50) not null,
fone varchar(15) not null unique,
perfil varchar(50) not null);
show tables;
-- descrevendo a tabela
describe tb_usuarios;
-- inserindo dados na tabela (Create)
insert into tb_usuarios values
(1,'Victor Guilherme Leite de Medeiros','victorlm1','victor123','91111-1111','Aluno do Senac');
insert into tb_usuarios values
(2,'Bruno Rodrigues','brunor2','bruno123','92222-2222','Aluno do Senac');
insert into tb_usuarios values
(3,'Lucas Souza','lucass3','lucas123','93333-3333','Aluno do Senac');
-- pesquisando dados na tabela (Read)
select * from tb_usuarios;