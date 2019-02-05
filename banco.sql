-- criar banco de dados
--mysql -u root
create database aula1;

-- visualizar os bancos existentes

show databases;

-- "conectar"

use aula1;

--apagar banco de dados

drop database aula1;

-- criar tabela

create table usuario(
	Cod int,
	Nome varchar(40),
	Login varchar(40),
	Senha varchar(40),
	Perfil Enum('ADM','USER')



);

-- Inserir dados na tabela
insert into usuario values
(100,'ANA','123','lalala','ADM');
insert into usuario values
(110,'PEDRO','PEDRO','1990','USER');
insert into usuario values
(120,'Ana Carolina','ana',md5('12345'),'adm');

-- Visualizar dados na tabela
select * from usuario;