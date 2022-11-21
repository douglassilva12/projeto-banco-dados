CREATE TABLE public.tbconsulta (
	medcodigo int4 NOT NULL,
	paccodigo int4 NOT NULL,
	dataconsulta date not null,
	horaconsulta time not null,
constraint pk_tbconsulta primary key (medcodigo,paccodigo)
);

alter table public.tbconsulta add CONSTRAINT "FK_TBCONSULTA=>TBMEDICO" FOREIGN KEY (medcodigo) references public.tbmedico(medcodigo);
alter table public.tbconsulta add CONSTRAINT "FK_TBCONSULTA=>TBPACIENTE" FOREIGN KEY (paccodigo) references public.tbpaciente(paccodigo);

--deleta tabela
drop table public.tbconsulta;
--deleta dados da tabela
delete from tbconsulta;

delete from tbmedico;

insert into tbconsulta(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (1,2,'21/01/2013','14:25');

insert into tbconsulta(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (1,3,'21/01/2013','15:45');

insert into tbconsulta(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (2,1,'12/04/2012','09:25');

insert into tbconsulta(medcodigo,paccodigo,dataconsulta,horaconsulta)
values (4,3,'27/05/2012','11:15');

select * from tbconsulta