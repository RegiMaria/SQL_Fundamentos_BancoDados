CREATE TABLE cliente(
idcliente int AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf VARCHAR (16) NOT NULL,
cnh VARCHAR (15) NOT NULL,
email VARCHAR (100) NOT NULL,
telefone varchar (20) NOT NULL,
id_endereco int NOT NULL, 
KEY FK_id_endereco1_idx (id_endereco),
CONSTRAINT FK_id_endereco1 FOREIGN KEY (id_endereco) REFERENCES endereco (idendereco)
)
CREATE TABLE veiculo (
idveiculo int AUTO_INCREMENT NOT NULL PRIMARY KEY,
placa VARCHAR (50) NOT NULL,
marca VARCHAR(45) NOT NULL,
modelo VARCHAR(100) NOT NULL,
ano VARCHAR(20) NOT NULL,
km VARCHAR(100) NOT NULL,
renavam VARCHAR(45) NOT NULL
)
CREATE TABLE negociacao (
idnegocio int AUTO_INCREMENT NOT NULL PRIMARY KEY,
valor_fipe DECIMAL(8,2),
valor_venda DECIMAL(8,2),
valor_compra DECIMAL(8,2),
descricao VARCHAR (200),
id_veiculo int NOT NULL,
id_cliente int NOT NULL,
KEY FK_id_veiculo1_idx (id_veiculo),
KEY FK_id_cliente2_idx (id_cliente),
CONSTRAINT FK_id_veiculo1_idx FOREIGN KEY (id_veiculo) REFERENCES veiculo (idveiculo),
CONSTRAINT FK_id_cliente2_idx FOREIGN KEY (id_cliente) REFERENCES cliente (idcliente)
)
CREATE TABLE conta (
idconta int AUTO_INCREMENT NOT NULL PRIMARY KEY,
agencia int NOT NULL,
banco varchar(45) NOT NULL,
id_cliente int NOT NULL,
KEY FK_id_cliente1_idx (id_cliente),
CONSTRAINT FK_id_cliente1 FOREIGN KEY (id_cliente) REFERENCES cliente (idcliente))