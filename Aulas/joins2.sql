insert into tabelaex values ('lucineia');
insert into tabelaex values ('cadu');
insert into tabelaex values ('bruno');

insert into tabelafx values ('amarildo');
insert into tabelafx values ('alvaro');
insert into tabelafx values ('diogo');
insert into tabelafx values ('junior');
insert into tabelafx values ('batista');

select ex.nome, fx.nome
from tabelaex as ex
inner join tabelafx as fx
    on ex.nome = fx.nome;

select ex.nome, fx.nome 
from tabelaex as ex
left join tabelaex as fx 
    on ex.nome = fx.nome;

select ex.nome, fx.nome 
from tabelaex as ex
right join tabelafx as fx 
    on ex.nome = fx.nome;

select ex.nome, fx.nome 
from tabelaex as ex
left join tabelafx as fx 
    on ex.nome = fx.nome
    where fx.nome is null;