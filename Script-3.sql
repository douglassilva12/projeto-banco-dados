select * from tbmedico

select * from tbpaciente

select * from tbconsulta

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (5,'aula chata','porrice');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (6,'aula merda','caralho');

insert into tbmedico(medcodigo,mednome,medespecialidade)
values (7,'aula inferno','desgraça');

--alterar dados de uma chave
update tbmedico set
mednome='Douglas Bento da Silva', medespecialidade = 'Ginecologista' where medcodigo=5

--deletar chave
delete from tbmedico where medcodigo = 5

--deletar n chaves
delete from tbmedico where medcodigo in (5,6,7)

--selecionar algo específico
select tbmedico.medcodigo, tbmedico.mednome, tbmedico.medespecialidade from tbmedico where medcodigo=2

--clausula join - juntar 2 ou mais tabelas
--traz tudo com a condição selecionada
inner join tbmedico on(tbmedico.medcodigo=tbconsulta.medcodigo)
inner join tbpaciente on(tbpaciente.paccodigo=tbconsulta.paccodigo)
