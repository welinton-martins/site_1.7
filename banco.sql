SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `id11294016_bd_tcc_fonodiologo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `id11294016_bd_tcc_fonodiologo` ;

-- -----------------------------------------------------
-- Table `id11294016_bd_tcc_fonodiologo`.`tipo_usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `id11294016_bd_tcc_fonodiologo`.`tipo_usuario` (
  `cd_tipo_usuario` INT NOT NULL auto_increment,
  `nm_tipo_usuario` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`cd_tipo_usuario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id11294016_bd_tcc_fonodiologo`.`Usuario`-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `id11294016_bd_tcc_fonodiologo`.`Usuario` (
  `nm_email` VARCHAR(100) NOT NULL ,
  `nm_usuario` VARCHAR(100) NOT NULL ,
  `nm_senha` VARCHAR(45) NOT NULL ,
  `ds_medicamento` TEXT  ,
  `cd_telefone_usuario` VARCHAR(30)  ,
  `nm_mae_paciente` VARCHAR(100)  ,
  `nm_pai_paciente` VARCHAR(100)  ,
  `ic_sexo` VARCHAR(1)  ,
  `dt_nascimento` VARCHAR(20)   ,
  `ds_escolaridade_paciente` VARCHAR(45)  ,
  `ds_outras_atv_esportivas` TEXT  ,
  `ds_periodo_estudo` VARCHAR(20)  ,
  `ic_autorizar_confirmacao` VARCHAR(4)  ,
  `tipo_usuario_cd_tipo_usuario` INT NOT NULL,
	`imagem` longtext ,
  `logou` INT,
  PRIMARY KEY (`nm_email`,`tipo_usuario_cd_tipo_usuario`) ,
  INDEX `fk_Usuario_tipo_usuario1_idx` (`tipo_usuario_cd_tipo_usuario` ASC) ,
  CONSTRAINT `fk_Usuario_tipo_usuario1`
    FOREIGN KEY (`tipo_usuario_cd_tipo_usuario` )
    REFERENCES `id11294016_bd_tcc_fonodiologo`.`tipo_usuario` (`cd_tipo_usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id11294016_bd_tcc_fonodiologo`.`Consulta`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `id11294016_bd_tcc_fonodiologo`.`Consulta` (
  `dt_consulta` DATETIME NOT NULL ,
  `nm_email` VARCHAR(100)  ,
  `ds_anotacao_consulta` TEXT NOT NULL ,
  `qt_nota_consulta` int NOT NULL ,
  `nm_exercicio` varchar(100) ,
  PRIMARY KEY (`dt_consulta`, `nm_email`) ,
  INDEX `fk_Consulta_Usuario1_idx` (`nm_email` ASC) ,
  CONSTRAINT `fk_Consulta_Usuario1`
    FOREIGN KEY (`nm_email` )
    REFERENCES `id11294016_bd_tcc_fonodiologo`.`Usuario` (`nm_email` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id11294016_bd_tcc_fonodiologo`.`tipo_licao`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `id11294016_bd_tcc_fonodiologo`.`tipo_licao` (
  `cd_tipo_licao` INT NOT NULL AUTO_INCREMENT ,
  `nm_tipo_licao` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`cd_tipo_licao`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id11294016_bd_tcc_fonodiologo`.`Licao_Casa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `id11294016_bd_tcc_fonodiologo`.`Licao_Casa` (
  `cd_licao` INT NOT NULL AUTO_INCREMENT ,
  `nm_licao` VARCHAR(45) NOT NULL ,
  `ds_licao` VARCHAR(1000) NOT NULL ,
  `cd_tipo_licao` INT NOT NULL ,
  PRIMARY KEY (`cd_licao`) ,
  INDEX `fk_Licao_Casa_tipo_licao1_idx` (`cd_tipo_licao` ASC) ,
  CONSTRAINT `fk_Licao_Casa_tipo_licao1`
    FOREIGN KEY (`cd_tipo_licao` )
    REFERENCES `id11294016_bd_tcc_fonodiologo`.`tipo_licao` (`cd_tipo_licao` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `id11294016_bd_tcc_fonodiologo`.`Tarefa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `id11294016_bd_tcc_fonodiologo`.`Tarefa` (
  `nm_email` VARCHAR(100) NOT NULL ,
  `cd_licao` INT NOT NULL ,
  `dt_entraga_licao` VARCHAR(45) NOT NULL ,
  `qt_pontuacao_licao` int NOT NULL ,
  PRIMARY KEY (`nm_email`, `cd_licao`, `dt_entraga_licao`, `qt_pontuacao_licao`) ,
  INDEX `fk_Usuario_has_Licoes_de_Casa_Usuario1_idx` (`nm_email` ASC) ,
  INDEX `fk_Tarefa_Licao_Casa1_idx` (`cd_licao` ASC) ,
  CONSTRAINT `fk_Usuario_has_Licoes_de_Casa_Usuario1`
    FOREIGN KEY (`nm_email` )
    REFERENCES `id11294016_bd_tcc_fonodiologo`.`Usuario` (`nm_email` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tarefa_Licao_Casa1`
    FOREIGN KEY (`cd_licao` )
    REFERENCES `id11294016_bd_tcc_fonodiologo`.`Licao_Casa` (`cd_licao` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `id11294016_bd_tcc_fonodiologo` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
