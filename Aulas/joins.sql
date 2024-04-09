-- exercício 1
select venda.duplic, cliente.nome, venda.valor
from cliente inner join venda on cliente.codcli = venda.codcli
where cliente.nome = 'PCTEC - MICROCOMPUTADORES S/A.';

-- exercício 2
select venda.duplic, cliente.nome, venda.vencto
from cliente inner join venda on cliente.codcli = venda.codcli
where extract (year from vencto) = 2004 and extract (month from vencto) = 11
order by vencto;

-- exercício 3
select venda.duplic, cliente.nome, venda.vencto
from cliente inner join venda on cliente.codcli = venda.codcli
where extract (month from vencto) = 10;

-- exercício 4
select cliente.nome, venda.valor, cliente.codcli
from cliente inner join venda on cliente.codcli = venda.codcli;

-- exercício 5
select ven.duplic, cli.nome, ven.valor, cli.codcli
from cliente cli inner join venda ven on cli.codcli = ven.codcli;

-- exercício 6
SELECT cliente.NOME, venda.vencto, COUNT(*) AS vencimento
FROM cliente 
INNER JOIN venda ON cliente.CODCLI = venda.CODCLI
WHERE venda.vencto < '2003-12-31'::date
GROUP BY cliente.nome, venda.vencto;

-- exercício 7
select venda.duplic, cliente.nome, SUM(venda.valor * 1.1) AS valor_com_juros
from cliente inner join venda on cliente.codcli = venda.codcli
group by duplic, nome;