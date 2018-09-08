-- MySQL Script generated by MySQL Workbench
-- Sat Sep  8 17:38:57 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_sysvigiar
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_sysvigiar
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_sysvigiar` DEFAULT CHARACTER SET utf8 ;
USE `db_sysvigiar` ;

-- -----------------------------------------------------
-- Table `db_sysvigiar`.`Funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sysvigiar`.`Funcao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sysvigiar`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sysvigiar`.`Pessoa` (
  `id_pessoa` INT NOT NULL AUTO_INCREMENT,
  `rg_pessoa` VARCHAR(20) NULL,
  `cpf_pessoa` VARCHAR(14) NOT NULL,
  `matricula` VARCHAR(10) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `org_emissor` VARCHAR(15) NULL,
  `nome_pessoa` VARCHAR(150) NOT NULL,
  `sexo` CHAR(15) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `data_cadastro` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cep` INT NOT NULL,
  `logradouro` VARCHAR(70) NOT NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(45) NULL,
  `bairro` VARCHAR(60) NOT NULL,
  `cidade` VARCHAR(50) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `status` INT NOT NULL,
  `Funcao_id` INT NOT NULL,
  PRIMARY KEY (`id_pessoa`),
  INDEX `fk_Pessoa_Funcao_idx` (`Funcao_id` ASC) VISIBLE,
  CONSTRAINT `fk_Pessoa_Funcao`
    FOREIGN KEY (`Funcao_id`)
    REFERENCES `db_sysvigiar`.`Funcao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_sysvigiar`.`Matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_sysvigiar`.`Matricula` (
  `id_matricula` INT NOT NULL AUTO_INCREMENT,
  `dt_matricula` DATE NOT NULL,
  `valor_matricula` DOUBLE NOT NULL,
  `valor_mensal` DOUBLE NOT NULL,
  `qnt_meses` INT NULL,
  PRIMARY KEY (`id_matricula`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
