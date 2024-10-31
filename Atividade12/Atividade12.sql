drop database loja_db;

create database if not exists loja_db;

use loja_db;

create table if not exists tb_vendas(
id_nf INT,
id_item INT,
cod_produto INT,
valor_unit decimal(4,2),
quantidade INT,
desconto INT
);

insert into tb_vendas (id_nf, id_item, cod_produto, valor_unit, quantidade, desconto)
values
(1, 1, 1, 25.00, 10, 5),
(1, 2, 2, 13.50, 3, null),
(1, 3, 3, 15.00, 2, null),
(1, 4, 4, 10.00, 1, null),
(1, 5, 5, 30.00, 1, null),
(2, 1, 3, 15.00, 4, null),
(2, 2, 4, 10.00, 5, null),
(2, 3, 5, 30.00, 7, null),
(3, 1, 1, 25.00, 5, null),
(3, 2, 4, 10.00, 4, null),
(3, 3, 5, 30.00, 5, null),
(3, 4, 2, 13.50, 7, null),
(4, 1, 5, 30.00, 10, 15),
(4, 2, 4, 10.00, 12, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 4, 2, 13.50, 15, 5),
(5, 1, 3, 15.00, 3, null),
(5, 2, 5, 30.00, 6, null),
(6, 1, 1, 25.00, 22, 15),
(6, 2, 3, 15.00, 25, 20),
(7, 1, 1, 25.00, 10, 3),
(7, 2, 2, 13.50, 10, 4),
(7, 3, 3, 15.00, 10, 4),
(7, 4, 5, 30.00, 10, 1);

-- 	Qusestões :
 
-- 1
SELECT id_nf, id_item, cod_produto, valor_unit FROM tb_vendas WHERE desconto IS NULL ;

-- 2
SELECT id_nf, id_item, cod_produto, valor_unit FROM tb_vendas WHERE VALOR_UNIT - (VALOR_UNIT*(DESCONTO/100)) ;

-- 3
UPDATE tb_vendas SET desconto = 0 WHERE desconto IS NULL ;

-- 4
SELECT id_nf, id_item, cod_produto, valor_unit, quantidade * valor_unit AS valor_total, desconto, valor_unit - (valor_unit * (desconto / 100)) AS valor_vendido FROM tb_vendas ;

-- 5
SELECT id_nf, SUM(quantidade * valor_unit) AS valor_total FROM tb_vendas GROUP BY id_nf ORDER BY valor_total DESC ;

-- 6
SELECT id_nf, SUM(quantidade * (valor_unit - (valor_unit * (desconto / 100)))) AS valor_vendido FROM tb_vendas GROUP BY id_nf ORDER BY valor_vendido DESC ;

-- 7
SELECT cod_produto, SUM(quantidade) AS quantidade FROM tb_vendas GROUP BY cod_produto ORDER BY quantidade DESC LIMIT 1 ;

-- 8
SELECT id_nf, cod_produto FROM tb_vendas WHERE quantidade > 10 GROUP BY id_nf, cod_produto ORDER BY id_nf, cod_produto ;

-- 9 
SELECT id_nf, SUM(quantidade * valor_unit) AS valor_total FROM tb_vendas GROUP BY id_nf HAVING valor_total > 500 ORDER BY valor_total DESC ;

-- 10
SELECT cod_produto, AVG(desconto) AS media FROM tb_vendas GROUP BY cod_produto ;

-- 11
SELECT cod_produto, MIN(desconto) AS menor, MAX(desconto) AS maior, AVG(desconto) AS media FROM tb_vendas GROUP BY cod_produto ;

-- 12
SELECT id_nf, COUNT(id_item) AS quantidade FROM tb_vendas GROUP BY id_nf HAVING quantidade > 3 ;
