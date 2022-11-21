create table public.tbmedico(
	medcodigo int4 not null,
	mednome varchar(200)not null,
	medespecialidade varchar (200)not null
	constraint pk_tbmedico primary key (medcodigo)
);

CREATE TABLE public.tbpaciente (
    paccodigo int4 NOT NULL,
    pacnome varchar(200) NOT null,
--primary key
constraint pk_tbpaciente primary key (paccodigo)
);

CREATE TABLE public.tbagenda (
	medcodigo int4 not null,
    paccodigo int4 NOT NULL,
    dataconsulta date not null,
    horaconsulta time not null,
--primary key
constraint pk_tbagenda primary key (medcodigo,paccodigo)
);

alter table public.tbagenda add CONSTRAINT "FK_TBAGENDA=>TBMEDICO" FOREIGN KEY (medcodigo) references public.tbmedico(medcodigo);
alter table public.tbagenda add CONSTRAINT "FK_TBAGENDA=>TBPACIENTE" FOREIGN KEY (paccodigo) references public.tbpaciente(paccodigo);


alter table tbmedico add
constraint pk_tbmedico primary key (medcodigo)

alter table tbpaciente add
constraint pk_tbpaciente primary key (paccodigo)

drop table public.tbmedico;
drop table public.tbpaciente;
drop table public.tbagenda;
delete from tbmedico;
delete from tbpaciente;
delete from tbagenda;

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (1,'Mauricio de Nassau','Cardiologia');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (2,'Jorge Amado','Dermatologista');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (3,'Paulo Coelho','Cardiologista');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (4,'Willian Bonner','Neurologia');

insert into tbpaciente(paccodigo,pacnome)
values (1,'Jabes Ribeiro');

insert into tbpaciente(paccodigo,pacnome)
values (2,'Vane do Renascer');

insert into tbpaciente(paccodigo,pacnome)
values (3,'Geraldo Simões');

insert into tbpaciente(paccodigo,pacnome)
values (4,'Capitão Azevedo');

insert into tbagenda(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (1,2,'21/01/2013','14:25');

insert into tbagenda(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (1,3,'21/01/2013','15:45');

insert into tbagenda(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (2,1,'12/04/2012','09:25');

insert into tbagenda(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (4,3,'27/05/2012','11:15');

select * from tbmedico
select * from tbpaciente
select * from tbagenda
