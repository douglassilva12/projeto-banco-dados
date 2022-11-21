create table tblogradouro(
	logcodigo int4 not null,
	logtipo varchar(10) not null,
	logdescricao varchar(100) not null,
	constraint pk_tblogradouro primary key (logcodigo)
);

--testesssasasas

create table tbpessoa(
	pescodigo int4 not null,
	pesnome varchar (100) not null,
	pessexo smallint not null,
	pestipo smallint not null,
	logcodigo int4,
	constraint pk_tbpessoa primary key (pescodigo),
	CONSTRAINT "FK_TBPESSOA=>TBLOGRADOURO" FOREIGN KEY (logcodigo) references tblogradouro(logcodigo)
);

create table tbpessoacontato(
	pescodigo int4 not null,
	ctpnumero varchar(18) not null,
	ctpdescricao varchar(100) not null,
	ctpramal int4,
	constraint pk_tbpessoacontato primary key (pescodigo,ctpnumero),
	constraint "FK_TBPESSOACONTATO=>TBPESSOA" foreign key (pescodigo) references tbpessoa(pescodigo)
);

create table tbimovel(
	pescodigo int4 not null,
	logcodigo int4 not null,
	imvdescricao varchar(500) not null,
	imvlargura numeric(10,2) not null,
	imvcomprimento numeric(10,2) not null,
	constraint pk_tbimovel primary key (pescodigo,logcodigo,imvdescricao),
	constraint "FK_TBIMOVEL=>TBPESSOA" foreign key (pescodigo) references tbpessoa(pescodigo),
	CONSTRAINT "FK_TBIMOVEL=>TBLOGRADOURO" FOREIGN KEY (logcodigo) references tblogradouro(logcodigo)
);

alter table tblogradouro add constraint pk_tblogradouro primary key (logcodigo);
alter table tbpessoa add constraint pk_tbpessoa primary key (logcodigo);
alter table tbpessoacontato add constraint pk_tbpessoacontato primary key (pescodigo);
alter table tbimovel add constraint pk_tbimovel primary key (pescodigo);

drop table tblogradouro;
drop table tbpessoa;
drop table tbpessoacontato;
drop table tbimovel;

delete from tblogradouro;
delete from tbpessoa;
delete from tbpessoacontato;
delete from tbimovel;

select * from tblogradouro;
select * from tbpessoa;
select * from tbpessoacontato;
select * from tbimovel

--LOGRADOURO
insert into tblogradouro(logcodigo,logtipo,logdescricao) values (1,'Rua','XV de Novembro');
insert into tblogradouro(logcodigo,logtipo,logdescricao) values (2,'Avenida','Carlos Gomes');
insert into tblogradouro(logcodigo,logtipo,logdescricao) values (3,'Travessa','Pinheiros');
insert into tblogradouro(logcodigo,logtipo,logdescricao) values (4,'BR','470, km 242');
insert into tblogradouro(logcodigo,logtipo,logdescricao) values (5,'Rua','São Paulo');
insert into tblogradouro(logcodigo,logtipo,logdescricao) values (6,'Estrada','Fundo Canoas');

--PESSOA
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (1,'Marcos',1,1,2);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (2,'Pedro',1,1,5);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (3,'José S/A',1,2,1);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (4,'Maria',2,1,3);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (5,'Marta',2,1,4);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (6,'Papel & CIA',1,2,5);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (7,'Roberto',1,1,3);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (8,'Tais',2,1,2);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (9,'Mônica Presentes',1,2,4);
insert into tbpessoa (pescodigo,pesnome,pessexo,pestipo,logcodigo) values (10,'Rivaldo',1,1,5);

--PESSOA CONTATO
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (1,'4432-5526','Telefone Residencial',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (1,'8822-5560','Telefone Celular',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (1,'3351-2115','Telefone Comercial',2115);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (2,'1123-5526','Telefone Residencial',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (3,'1124-5527','Telefonista',15);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (4,'9925-2265','Telefone Celular',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (5,'6652-2445','Telefone Residencial',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (6,'9952-2265','Telefone Celular',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (10,'6658-2265','Telefone Residencial',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (10,'9925-2256','Telefone Celular',NULL);
insert into tbpessoacontato (pescodigo,ctpnumero,ctpdescricao,ctpramal) values (10,'3321-2265','Telefone Comercial',2265);

--IMÓVEL
insert into tbimovel(pescodigo,logcodigo,imvdescricao,imvlargura,imvcomprimento) values (1,1,'Imóvel de Alvenaria',25,52);
insert into tbimovel(pescodigo,logcodigo,imvdescricao,imvlargura,imvcomprimento) values (2,2,'Terreno Comercial',20,30);
insert into tbimovel(pescodigo,logcodigo,imvdescricao,imvlargura,imvcomprimento) values (5,5,'Sítio',200,1000);
insert into tbimovel(pescodigo,logcodigo,imvdescricao,imvlargura,imvcomprimento) values (4,3,'Sala Comercial',5,10);
insert into tbimovel(pescodigo,logcodigo,imvdescricao,imvlargura,imvcomprimento) values (8,4,'Apartamento - Cobertura',50,60);
insert into tbimovel(pescodigo,logcodigo,imvdescricao,imvlargura,imvcomprimento) values (10,3,'Imóvel de Madeira',20,15);

--questão 2
update tblogradouro set logdescricao = '7766' where logcodigo = 1

--questão 3
update tblogradouro set logtipo = 'Rua' where logdescricao = 'Carlos Gomes'

--questão 4


--questão 5
update tbpessoa set pessexo = '0' where pestipo = 2

--questão 6
delete from tbimovel where pescodigo = 5;
delete from tbpessoacontato where pescodigo = 5;
delete from tbpessoa where pescodigo = 5;

--questão 7
update tbpessoa set logcodigo = 3 where logcodigo = 5;
delete from tblogradouro where logcodigo = 5

--questão 8
delete from tbpessoacontato where pescodigo = 2

--questão 9
select logcodigo,count(*) as registros from tbimovel group by tbimovel.logcodigo order by logcodigo

--questão 10
select tblogradouro.logcodigo,tblogradouro.logtipo,tblogradouro.logdescricao from tblogradouro order by tblogradouro.logcodigo

--questão 10.1
select pescodigo as Codigo,pesnome as Nome,pessexo as sexo,pestipo as Tipo,tbpessoa.logcodigo as CodLogradouro from tbpessoa order by pescodigo