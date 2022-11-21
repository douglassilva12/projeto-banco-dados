CREATE TABLE public.tbpaciente (
    paccodigo int4 NOT NULL,
    pacnome varchar(200) NOT null,
--primary key
constraint pk_tbpaciente primary key (paccodigo)
);

--opção 2
alter table tbpaciente add
constraint pk_tbpaciente primary key (paccodigo)

--deleta tabela
drop table public.tbpaciente;
--deleta dados da tabela
delete from tbpaciente;

--copiar e executar
insert into tbpaciente(paccodigo,pacnome)
values (1,'Jabes Ribeiro');

insert into tbpaciente(paccodigo,pacnome)
values (2,'Vane do Renascer');

insert into tbpaciente(paccodigo,pacnome)
values (3,'Geraldo Simões');

insert into tbpaciente(paccodigo,pacnome)
values (4,'Capitão Azevedo');

select * from tbpaciente