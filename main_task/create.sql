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
-- Table `mydb`.`Meetups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Meetups` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Start` DATETIME NOT NULL,
  `Location` VARCHAR(150) NOT NULL,
  `Topic` VARCHAR(150) NOT NULL,
  `Description` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Statuses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Statuses` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Value` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Users` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Birthdate` DATETIME NOT NULL,
  `Introduction` VARCHAR(500) NULL,
  `Avatar` VARCHAR(1000) NULL,
  `Email` VARCHAR(150) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`MeetupRegistrations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`MeetupRegistrations` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `StatusId` INT UNSIGNED NOT NULL,
  `MeetupId` INT UNSIGNED NOT NULL,
  `UserId` INT UNSIGNED NOT NULL,
  INDEX `StatusId_idx` (`StatusId` ASC),
  INDEX `MeetupId_idx` (`MeetupId` ASC),
  INDEX `UserId_idx` (`UserId` ASC),
  PRIMARY KEY (`Id`, `StatusId`, `MeetupId`, `UserId`),
  CONSTRAINT `StatusId`
    FOREIGN KEY (`StatusId`)
    REFERENCES `mydb`.`Statuses` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `MeetupId`
    FOREIGN KEY (`MeetupId`)
    REFERENCES `mydb`.`Meetups` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `UserId`
    FOREIGN KEY (`UserId`)
    REFERENCES `mydb`.`Users` (`Id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
