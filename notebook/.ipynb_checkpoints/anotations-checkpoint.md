Projeto: Escrevendo scritps SQL no MySQL workbench
Profa: Juliana Mascarenhas
Disciplina: SQL Fundamentos de Banco de Dados

Objetivos: Explorar os Modelos conceitual,Lógico e Modelo físico do desenvolvimento de banco de dados. Especificamente a escrita de Scripts em SQL.

Tarefas executadas:
1. Criamos o database
2. Criamos as tabelas
3. Inserimos dados

Executamos scripts no JupyterLab para **gerar dados** usando as libs 'faker' e cpf-generator'.
Executamos funções para gerar CNH aleatoriamente com a libs 'random'.

Tabelas
cliente (Nome,cpf,cnh, email, telefone)
conta (conta, agencia, banco)
endereco (CEP, rua, bairro, cidade, UF)
veiculo (marca, modelo, ano, km)
Negociacao (Valor fipe, valor venda, valor compra, descricao)





Estrutura de endereço da tabela **endereco**:
cep 11268-193
rua Vila Leandro Araújo, 9
bairro Jatoba
cidade Rezende
UF CE


Script SQL:
CREATE DATABASE nacional_seminovos;
CREATE TABLE cliente ();
INSERT INTO cliente (nome_completo, cpf, cnh, email, telefone, id_endereco) VALUES ('Lara_da_Rosa', '928.576.013-95', '147213381928', 'luiz-miguel79@example.org', '(51) 8432 0714', 1);