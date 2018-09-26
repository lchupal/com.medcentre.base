-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`clients` (
  `idClients` INT(11) NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `middle_name` VARCHAR(45) NOT NULL,
  `date_of_birth` DATE NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `pasport` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idClients`),
  UNIQUE INDEX `Pasport_UNIQUE` (`pasport` ASC),
  UNIQUE INDEX `Phone number_UNIQUE` (`phone_number` ASC),
  UNIQUE INDEX `idClients_UNIQUE` (`idClients` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 72
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`services`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`services` (
  `idServices` INT(11) NOT NULL AUTO_INCREMENT,
  `name_of_service` VARCHAR(45) NOT NULL,
  `doctor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idServices`),
  UNIQUE INDEX `idServices_UNIQUE` (`idServices` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`visits`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`visits` (
  `idVisits` INT(11) NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(45) NOT NULL,
  `time` VARCHAR(45) NOT NULL,
  `service` VARCHAR(45) NOT NULL,
  `doctor` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `diagnosis` VARCHAR(45) NULL DEFAULT NULL,
  `survey` VARCHAR(45) NULL DEFAULT NULL,
  `treatment` VARCHAR(45) NULL DEFAULT NULL,
  `Services_idServices` INT(11) NOT NULL,
  `Clients_idClients` INT(11) NOT NULL,
  PRIMARY KEY (`idVisits`),
  UNIQUE INDEX `idVisits_UNIQUE` (`idVisits` ASC),
  INDEX `fk_Visits_Services1_idx` (`Services_idServices` ASC),
  INDEX `fk_Visits_Clients1_idx` (`Clients_idClients` ASC),
  CONSTRAINT `fk_Visits_Clients1`
    FOREIGN KEY (`Clients_idClients`)
    REFERENCES `mydb`.`clients` (`idClients`),
  CONSTRAINT `fk_Visits_Services1`
    FOREIGN KEY (`Services_idServices`)
    REFERENCES `mydb`.`services` (`idServices`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`doctors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`doctors` (
  `idDoctors` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `Visits_idVisits` INT(11) NOT NULL,
  PRIMARY KEY (`idDoctors`),
  UNIQUE INDEX `idDoctors_UNIQUE` (`idDoctors` ASC),
  INDEX `fk_Doctors_Visits1_idx` (`Visits_idVisits` ASC),
  CONSTRAINT `fk_Doctors_Visits1`
    FOREIGN KEY (`Visits_idVisits`)
    REFERENCES `mydb`.`visits` (`idVisits`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`doctors_has_services`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`doctors_has_services` (
  `Doctors_idDoctors` INT(10) UNSIGNED NOT NULL,
  `Services_idServices` INT(11) NOT NULL,
  PRIMARY KEY (`Doctors_idDoctors`, `Services_idServices`),
  INDEX `fk_Doctors_has_Services_Doctors1_idx` (`Doctors_idDoctors` ASC),
  INDEX `fk_Doctors_has_Services_Services1_idx` (`Services_idServices` ASC),
  CONSTRAINT `fk_Doctors_has_Services_Doctors1`
    FOREIGN KEY (`Doctors_idDoctors`)
    REFERENCES `mydb`.`doctors` (`idDoctors`),
  CONSTRAINT `fk_Doctors_has_Services_Services1`
    FOREIGN KEY (`Services_idServices`)
    REFERENCES `mydb`.`services` (`idServices`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
