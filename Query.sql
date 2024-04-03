-- AGRUPAMENTO E ORDENAÇÃO:
-- ORDER BY 
-- GROUP BY
-- Consulta por ordem alfabética os nomes da coluna 'nome' na tabela 'cliente':
SELECT idcliente, nome
FROM cliente
ORDER BY nome;

-- Consulta nome e cnh na tabela cliente por ordem alfabética:
SELECT nome, cnh
FROM cliente
ORDER BY nome;

SELECT marca, modelo
FROM veiculo
WHERE km > 30000;

-- ALTERAÇÃO NA COLUNA 'km' DA TABELA 'veiculo':
UPDATE veiculo SET km = REPLACE(km, '.', '');


-- JUNÇÃO DE TABELAS:

/*Contando ocrrencias por UF e usando a cláusula GROUPY BY,
 usando função de agregação COUNT(*)  
 e definindo a relação em JOIN ON*/
 
 SELECT c.nome, e.uf, COUNT(*) AS total
FROM cliente c
JOIN endereco e ON c.id_endereco = e.idendereco
GROUP BY c.nome, e.uf;

-- Consulta a tabela 'cliente' e 'endereco' e retorna os dados 'nome' do cliente
/* com 'idcliente igual a 7' e o 'idendereco' correspondente:
 Join ON */ 
 
SELECT c.nome, e.idendereco
FROM cliente c
JOIN endereco e ON c.id_endereco = e.idendereco
WHERE c.idcliente = 7;

/*INNER JOIN endereco e ON c.id_endereco = e.idendereco combina
 os registros das duas tabelas onde os valores da coluna id_endereco
 na tabela cliente correspondem aos valores da coluna idendereco na tabela endereco*/
 
SELECT c.nome, c.cnh, e.cidade, e.uf
FROM cliente c
INNER JOIN endereco e ON c.id_endereco = e.idendereco;

/* Add FK para idcliente na table idveiculo */
ALTER TABLE veiculo
ADD COLUMN id_cliente INT,
ADD CONSTRAINT fk_cliente1
FOREIGN KEY (id_cliente)
REFERENCES cliente(idcliente);