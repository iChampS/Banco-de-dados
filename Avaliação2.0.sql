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
(null,'452.412.382-20','Victor Guilherme Leite de Medeiros','08452-000','Avenida Brasil','São Paulo','622','vitim123','Jardim Nova Vila','Poá','SP','2745-5692','6969-6969','victor.37@outlook.com');

insert into tb_cliente values
(null,'469.422.655/32','Geovani Bandeira','08568-300','Avenida Adutora','Adutora','622','oioioi','Jardim Nova Poá','Poá','SP','4638-0052','6969-6969','gmbandeira01@hotmail.com');

insert into tb_cliente values
(null,'555.845.682/55','Fabricio Ferreira','1515-5525','Palete','Houter','12','mestre','Pokemon','Rota 8','SP','8889-1528','6815-5456','fabras002@gmail.com');

insert into tb_cliente values
(null,'546.484.585-30','Arlindo Flores da Silva','05814-548','San Diego','San Diego','456','San Diego','San Diego','San Diego','AM','8588-5282','5858-1456','arlindo.22@hotmail.com');

insert into tb_cliente values
(null,'454.556.548-55','Giacomo Vinicius Junior','08568-300','Avenida Praia Grande','Jucelino','822','junim123','Jardim Oliva','OL','SP','4639-0052','9696-9696','giacomo.31@outlook.com');
select * from tb_cliente;
delete from tb_cliente where idcli = 1;
