-- -----------------------------------------------------
-- Table `nacional_seminovos`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nacional_seminovos`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL DEFAULT NULL,
  `cpf` VARCHAR(16) NULL DEFAULT NULL,
  `cnh` VARCHAR(15) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `telefone` VARCHAR(20) NULL DEFAULT NULL,
  `id_endereco` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
    )

-- -----------------------------------------------------
-- Table `nacional_seminovos`.`conta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nacional_seminovos`.`conta` (
  `idconta` INT NOT NULL AUTO_INCREMENT,
  `agencia` INT NOT NULL,
  `banco` VARCHAR(45) NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`idconta`),
  INDEX `FK_id_cliente1_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `FK_id_cliente1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `nacional_seminovos`.`cliente` (`idcliente`)
    )


-- -----------------------------------------------------
-- Table `nacional_seminovos`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nacional_seminovos`.`endereco` (
  `idendereco` INT NOT NULL AUTO_INCREMENT,
  `cep` VARCHAR(15) NOT NULL,
  `rua` VARCHAR(100) NOT NULL,
  `cidade` VARCHAR(100) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`idendereco`),
  INDEX `FK_id_cliente1_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `FK_id_cliente1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `nacional_seminovos`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
)

-- -----------------------------------------------------
-- Table `nacional_seminovos`.`veiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nacional_seminovos`.`veiculo` (
  `idveiculo` INT NOT NULL AUTO_INCREMENT,
  `placa` VARCHAR(50) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(100) NOT NULL,
  `ano` VARCHAR(20) NOT NULL,
  `km` VARCHAR(100) NOT NULL,
  `renavam` VARCHAR(45) NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`idveiculo`),
  INDEX `FK_id_cliente1_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `FK_id_cliente1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `nacional_seminovos`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
)


-- -----------------------------------------------------
-- Table `nacional_seminovos`.`negociacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nacional_seminovos`.`negociacao` (
  `idnegocio` INT NOT NULL AUTO_INCREMENT,
  `valor_fipe` DECIMAL(8,2) NULL DEFAULT NULL,
  `valor_venda` DECIMAL(8,2) NULL DEFAULT NULL,
  `valor_compra` DECIMAL(8,2) NULL DEFAULT NULL,
  `descricao` VARCHAR(200) NULL DEFAULT NULL,
  `id_veiculo` INT NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`idnegocio`),
  INDEX `FK_id_veiculo1_idx` (`id_veiculo` ASC) VISIBLE,
  INDEX `FK_id_cliente2_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `FK_id_cliente2_idx`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `nacional_seminovos`.`cliente` (`idcliente`),
  CONSTRAINT `FK_id_veiculo1_idx`
    FOREIGN KEY (`id_veiculo`)
    REFERENCES `nacional_seminovos`.`veiculo` (`idveiculo`)
    )


