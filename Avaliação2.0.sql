use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_usuarios(iduser int primary key,
usuario varchar(50) not null,
login varchar(50) not null unique,
senha varchar(50) not null,
fone varchar(15),
perfil varchar(50) not null
);
show tables;
-- descrevendo a tabela
describe tb_usuarios;
-- inserindo dados na tabela (Create)
insert into tb_usuarios values
(1,'Victor Guilherme Leite de Medeiros','victorlm2','vitim123','91111-1111','Aluno do Senac');
insert into tb_usuarios values
(2,'Geovani Bandeira','geovanib1','bandeira123','92222-2222','Aluno do Senac');
insert into tb_usuarios values
(3,'Fabricio Ferreira','fafa3','fafa123','93333-3333','Aluno do Senac');
-- pesquisando dados na tabela (Read)
select * from tb_usuarios;

use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_cliente(
idcli int primary key,
cpfcli varchar(50) unique,
nomecli varchar(50) not null,
cep varchar(50) not null,
tipo varchar(50)not null unique,
logradouro varchar(50) not null,
numero varchar(50) not null,
complemento varchar(50),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf varchar(50) not null,
fone1 varchar(50) not null,
fone2 varchar(50),
emailcli varchar(50) not null
);
show tables;
-- descrevendo a tabela
describe tb_cliente;
-- inserindo dados na tabela (Create)
insert into tb_cliente values
(1,'452.412.382-20','Victor Guilherme Leite de Medeiros','08452-000','Avenida Brasil','São Paulo','622','vitim123','Jardim Nova Vila','Poá','SP','2745-5692','6969-6969','victor.leite9@hotmail.com');
select * from tb_cliente;
delete from tb_cliente where idcli = 1;
