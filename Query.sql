SELECT c.nome, e.idendereco
FROM cliente c
JOIN endereco e ON c.id_endereco = e.idendereco
WHERE c.idcliente = 7;
