CREATE TABLE public.tbmedico (
    medcodigo int4 NOT NULL,
    mednome varchar(200) NOT NULL,
    medespecialidade varchar(100) NOT NULL
--primary key
constraint pk_tbmedico primary key (medcodigo)
);

--opção 2
alter table tbmedico add
constraint pk_tbmedico primary key (medcodigo)

delete from tbmedico;

--copiar e executar
insert into tbmedico(medcodigo,mednome,medespecialidade)
values (1,'Mauricio de Nassau','Cardiologia');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (2,'Jorge Amado','Dermatologista');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (3,'Paulo Coelho','Cardiologista');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (4,'Willian Bonner','Neurologia');

select * from tbmedico