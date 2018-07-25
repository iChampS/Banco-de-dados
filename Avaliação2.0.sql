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
idcli int auto_increment primary key,
cpfcli varchar(50) unique,
nomecli varchar(50) not null,
cep varchar(50) not null,
tipo varchar(50)not null unique,
logradouro varchar(50) not null,
numero varchar(50) not null,
complemento varchar(50),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf varchar(2) not null,
fone1 varchar(50) not null,
fone2 varchar(50),
emailcli varchar(50) not null
);
show tables;
-- descrevendo a tabela
describe tb_cliente;
-- inserindo dados na tabela (Create)
insert into tb_cliente values
(null,'452.412.382-20','Victor Guilherme Leite de Medeiros','08452-000','Avenida Brasil','São Paulo','622','vitim123','Jardim Nova Vila','Poá','SP','2745-5692','6969-6969','victor.leite9@hotmail.com');
insert into tb_cliente values
(null,'442.352.682-15','Geovani Matheus Bandeira','07292-100','Rua João Paulo','São Paulo','312','bandeirinha123','Jardim Nova Aliance','São Matheus','SP','2543-7622','6868-6868','g.bandeira@gmail.com');
insert into tb_cliente values
(null,'216.522.481-32','Bruno Rodrigues','05422-020','Rua Guarapari','São Paulo','382','burinho123','Jardim Bela Vista','Guarulhos','SP','2625-5472','6767-6767','bruninho.r@outlook.com');
insert into tb_cliente values
(null,'552.471.520-22','Fabricio Ferreira de Oliveira','8012-002','Rua Route 2','São Paulo','543','fafa123','Vila São Francisco','Zona Leste','SP','4421-9317','6565-6565','fabricio.o@live.com');
insert into tb_cliente values
(null,'433.352.982-14','Sabrina da Silva','03321-000','Rua Route 30','São Paulo','522','sasa123','Jardim Nova York','Zona Sul','SP','2229-6020','6464-6464','sabrina.s@yahoo.com');
select * from tb_cliente;
