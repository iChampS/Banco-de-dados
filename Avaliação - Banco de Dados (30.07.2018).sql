use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o c?digo abaixo cria uma tabela
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
(null,'469.422.655/32','Victor Guilherme Leite de Medeiros','08568-300','Avenida Adutora','Adutora','622','oioioi','Jardim Nova Po?','Po?','SP','4638-0052','6969-6969','victor.m3@hotmail.com');

insert into tb_cliente values
(null,'555.845.682/55','Fabricio Ferreira de Oliveira','1515-5525','Palete','Houter','12','mestre','Pokemon','Rota 8','SP','8889-1528','6815-5456','FAFA@gmail.com');

insert into tb_cliente values
(null,'546.484.585-30','Geovani Bandeira','05814-548','San Diego','San Diego','456','San Diego','San Diego','San Diego','AM','8588-5282','5858-1456','geovani.b1@hotmail.com');

insert into tb_cliente values
(null,'486.546.545-30','Bruno Rodrigues','48415-549','França','Paris','332','França','summoners rift','Parque de la frança','KG','4158-4855','4598-8456','bruno.r2@outlook.com');

insert into tb_cliente values
(null,'454.556.548-55','Lucas Souza','08568-300','Avenida Adtora','Adtora','632','ooioi','Jardim ova Po?','P?','SP','4639-0052','9696-9696','lucas.s5@outlook.com');

delete from tb_cliente where idcli = 1;
select * from tb_cliente;


use dbinfox;
-- inspecionar tabelas no banco de dados
show tables;
-- o código abaixo cria uma tabela
create table tb_usuarios(
iduser int primary key,
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
(1,'Victor Guilherme Leite de Medeiros','victorgl','victor123','91111-1111','Aluno do Senac');
insert into tb_usuarios values
(2,'Geovani Bandeira','geovanib2','geovani123','92222-2222','Aluno do Senac');
insert into tb_usuarios values
(3,'Fabricio Ferreira','fafa5','fafa123','93333-3333','Aluno do Senac');
-- pesquisando dados na tabela (Read)
select * from tb_usuarios;

-- Avaliação

use dbinfox;
-- o código abaixo cria uma tabela
create table tb_os(
idos int auto_increment primary key,
tipos varchar(15)not null,
dataos timestamp default current_timestamp,
situacao varchar(20)not null,
equipamento varchar(200)not null,
defeito varchar(200)not null,
servico varchar(200),
tecnico varchar(200),
valor decimal (10,2)
);

-- comando para alternar o start do inicio do auto incremento
alter table tb_os auto_increment = 10000;
drop table tb_os;
describe tb_os;

alter table  tb_os drop column idcli;
alter table tb_os add idcli int;
alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_cliente(idcli)
on delete no action;


insert into tb_os(idcli,tipos,situacao,equipamento,defeito,servico,tecnico,valor) 
values (3,'Orçamento','Teclas com defeito','Teclado','Quebrado','Troca de teclas','Bandeirinha',110);

insert into tb_os(idcli,tipos,situacao,equipamento,defeito,servico,tecnico,valor) 
values (2,'Conserto','Horário','Placa-mãe','Queimada','Troca de bateria','Joãozinho',90);

insert into tb_os(idcli,tipos,situacao,equipamento,defeito,servico,tecnico,valor) 
values (3,'Orçamento','Não da imagem','Placa de vídeo','Queimada','Troca de placa','Fafazinho',125);

select * from tb_os;

select idos, equipamento, defeito, valor from tb_os;
select idos as OS, equipamento as Equipamento, defeito as Defeito,tipos as Tipo, situacao as Situação, servico as Serviço, tecnico as Técnico, valor as Total from tb_os;

select
O.idos as OS,equipamento as Equipamento, defeito as Defeito, tipos as Tipo, situacao as Situação, servico as Serviço,tecnico as Técnico, valor as Total, C.nomecli as Nome, Fone1 as Fone, emailcli as Email, dataos as Data
from tb_os as O
inner join tb_cliente as C on (O.idcli = C.idcli);