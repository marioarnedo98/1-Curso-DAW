-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema libreria
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema libreria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `libreria` DEFAULT CHARACTER SET utf8 ;
USE `libreria` ;

-- -----------------------------------------------------
-- Table `libreria`.`Libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`Libro` (
  `ISBN` INT NOT NULL,
  `Título` VARCHAR(45) NULL,
  `Autor` VARCHAR(45) NULL,
  `AñoPublic` VARCHAR(45) NULL,
  `Precio` VARCHAR(45) NULL,
  `RIF` INT NULL,
  `CI` VARCHAR(45) NULL,
  `CantPublicada` VARCHAR(45) NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`Editorial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`Editorial` (
  `RIF` INT NOT NULL,
  `NomEdit` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `Ciudad` VARCHAR(45) NULL,
  `Precontacto` VARCHAR(45) NULL,
  `NumTelef` VARCHAR(45) NULL,
  `NumFax` VARCHAR(45) NULL,
  `E-mai` VARCHAR(45) NULL,
  PRIMARY KEY (`RIF`),
  CONSTRAINT `RIF`
    FOREIGN KEY (`RIF`)
    REFERENCES `libreria`.`Libro` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`Libreria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`Libreria` (
  `NomLibreria` VARCHAR(45) NOT NULL,
  `Direc` VARCHAR(45) NULL,
  `Encargado` VARCHAR(45) NULL,
  `NumTelef` VARCHAR(45) NULL,
  `NumFax` VARCHAR(45) NULL,
  PRIMARY KEY (`NomLibreria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`Libreria/libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`Libreria/libro` (
  `NomLibreria` VARCHAR(45) NOT NULL,
  `ISBN` VARCHAR(45) NULL,
  `CantLibro` VARCHAR(45) NULL,
  `Libreria/librocol` VARCHAR(45) NULL,
  PRIMARY KEY (`NomLibreria`),
  CONSTRAINT `ISBN`
    FOREIGN KEY ()
    REFERENCES `libreria`.`Libro` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `NomLibreria`
    FOREIGN KEY ()
    REFERENCES `libreria`.`Libreria` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libreria`.`Autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libreria`.`Autor` (
  `CI` VARCHAR(45) NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `Telefono` VARCHAR(45) NULL,
  `FechaNac` VARCHAR(45) NULL,
  PRIMARY KEY (`CI`),
  CONSTRAINT `CI`
    FOREIGN KEY ()
    REFERENCES `libreria`.`Libro` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
