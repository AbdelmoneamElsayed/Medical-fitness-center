-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema my_project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema my_project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `my_project` DEFAULT CHARACTER SET utf8 ;
USE `my_project` ;

-- -----------------------------------------------------
-- Table `my_project`.`Admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Admin` (
  `User_id` INT NOT NULL AUTO_INCREMENT,
  `User_email` VARCHAR(45) NOT NULL,
  `User_Name` VARCHAR(45) NOT NULL,
  `User_mobile` INT NOT NULL,
  `User_address` VARCHAR(45) NOT NULL,
  `User_gender` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`User_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Login` (
  `Login_id` INT NOT NULL AUTO_INCREMENT,
  `Login_username` VARCHAR(45) NOT NULL,
  `Login_password` INT NOT NULL,
  `Admin_User_id` INT NOT NULL,
  PRIMARY KEY (`Login_id`, `Admin_User_id`),
  INDEX `fk_Login_Admin_idx` (`Admin_User_id` ASC) VISIBLE,
  CONSTRAINT `fk_Login_Admin`
    FOREIGN KEY (`Admin_User_id`)
    REFERENCES `my_project`.`Admin` (`User_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Payment_gateway`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Payment_gateway` (
  `Regesteration_No` INT NOT NULL AUTO_INCREMENT,
  `Payment_amount` INT NOT NULL,
  `Payment_data` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Regesteration_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Member` (
  `Mem_id` INT NOT NULL AUTO_INCREMENT,
  `Mem_Name` VARCHAR(45) NOT NULL,
  `Mem_address` VARCHAR(45) NOT NULL,
  `Mem_age` INT NOT NULL,
  `Mem_mobile` INT NOT NULL,
  `Mem_DOB` DATE NOT NULL,
  `Mem_gender` VARCHAR(45) NOT NULL,
  `Mem_password` INT NOT NULL,
  `Mem_email` VARCHAR(45) NOT NULL,
  `Admin_User_id` INT NULL DEFAULT NULL,
  `Payment_gateway_Regesteration_No` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Mem_id`, `Admin_User_id`, `Payment_gateway_Regesteration_No`),
  INDEX `fk_Member_Admin1_idx` (`Admin_User_id` ASC) VISIBLE,
  INDEX `fk_Member_Payment_gateway1_idx` (`Payment_gateway_Regesteration_No` ASC) VISIBLE,
  CONSTRAINT `fk_Member_Admin1`
    FOREIGN KEY (`Admin_User_id`)
    REFERENCES `my_project`.`Admin` (`User_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Member_Payment_gateway1`
    FOREIGN KEY (`Payment_gateway_Regesteration_No`)
    REFERENCES `my_project`.`Payment_gateway` (`Regesteration_No`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Trainer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Trainer` (
  `Trainer_id` INT NOT NULL AUTO_INCREMENT,
  `Trainer_email` VARCHAR(45) NOT NULL,
  `Trainer_Name` VARCHAR(45) NOT NULL,
  `Trainer_mobile` INT NOT NULL,
  `Trainer_address` VARCHAR(45) NOT NULL,
  `Admin_User_id` INT NOT NULL,
  PRIMARY KEY (`Trainer_id`, `Admin_User_id`),
  INDEX `fk_Trainer_Admin1_idx` (`Admin_User_id` ASC) VISIBLE,
  CONSTRAINT `fk_Trainer_Admin1`
    FOREIGN KEY (`Admin_User_id`)
    REFERENCES `my_project`.`Admin` (`User_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Manager`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Manager` (
  `Manager_id` INT NOT NULL AUTO_INCREMENT,
  `Manager_Name` VARCHAR(45) NOT NULL,
  `Manager_email` VARCHAR(45) NOT NULL,
  `Manager_mobile` INT NOT NULL,
  `Manager_level` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Manager_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Reports`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Reports` (
  `Report_No` INT NOT NULL AUTO_INCREMENT,
  `Report_attendance` VARCHAR(45) NOT NULL,
  `Report_activity` VARCHAR(45) NOT NULL,
  `Reports_weekly` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Report_No`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`schedule` (
  `schedule_ID` INT NOT NULL AUTO_INCREMENT,
  `schedule_describtion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`schedule_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Lab`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Lab` (
  `Lab_id` INT NOT NULL AUTO_INCREMENT,
  `Technician_Name` VARCHAR(45) NOT NULL,
  `Doctor_Name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Lab_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Medicalcheckup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Medicalcheckup` (
  `MRN` INT NOT NULL AUTO_INCREMENT,
  `Full_Name` VARCHAR(45) NOT NULL,
  `health_condition` VARCHAR(45) NOT NULL,
  `service` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `Prescribtion` VARCHAR(45) NOT NULL,
  `Lab_Lab_id` INT NOT NULL,
  PRIMARY KEY (`MRN`, `Lab_Lab_id`),
  INDEX `fk_Medicalcheckup_Lab1_idx` (`Lab_Lab_id` ASC) VISIBLE,
  CONSTRAINT `fk_Medicalcheckup_Lab1`
    FOREIGN KEY (`Lab_Lab_id`)
    REFERENCES `my_project`.`Lab` (`Lab_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Manager_has_Reports`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Manager_has_Reports` (
  `Manager_Manager_id` INT NOT NULL,
  `Reports_Report_No` INT NOT NULL,
  PRIMARY KEY (`Manager_Manager_id`, `Reports_Report_No`),
  INDEX `fk_Manager_has_Reports_Reports1_idx` (`Reports_Report_No` ASC) VISIBLE,
  INDEX `fk_Manager_has_Reports_Manager1_idx` (`Manager_Manager_id` ASC) VISIBLE,
  CONSTRAINT `fk_Manager_has_Reports_Manager1`
    FOREIGN KEY (`Manager_Manager_id`)
    REFERENCES `my_project`.`Manager` (`Manager_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Manager_has_Reports_Reports1`
    FOREIGN KEY (`Reports_Report_No`)
    REFERENCES `my_project`.`Reports` (`Report_No`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Fit-schedule_has_Trainer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Fit-schedule_has_Trainer` (
  `Fit-schedule_Fit-schedule_No` INT NOT NULL,
  `Trainer_Trainer_id` INT NOT NULL,
  `Trainer_Admin_User_id` INT NOT NULL,
  PRIMARY KEY (`Fit-schedule_Fit-schedule_No`, `Trainer_Trainer_id`, `Trainer_Admin_User_id`),
  INDEX `fk_Fit-schedule_has_Trainer_Trainer1_idx` (`Trainer_Trainer_id` ASC, `Trainer_Admin_User_id` ASC) VISIBLE,
  INDEX `fk_Fit-schedule_has_Trainer_Fit-schedule1_idx` (`Fit-schedule_Fit-schedule_No` ASC) VISIBLE,
  CONSTRAINT `fk_Fit-schedule_has_Trainer_Fit-schedule1`
    FOREIGN KEY (`Fit-schedule_Fit-schedule_No`)
    REFERENCES `my_project`.`schedule` (`schedule_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fit-schedule_has_Trainer_Trainer1`
    FOREIGN KEY (`Trainer_Trainer_id` , `Trainer_Admin_User_id`)
    REFERENCES `my_project`.`Trainer` (`Trainer_id` , `Admin_User_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_project`.`Member_has_Medicalcheckup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_project`.`Member_has_Medicalcheckup` (
  `Member_Mem_id` INT NOT NULL,
  `Member_Admin_User_id` INT NOT NULL,
  `Member_Payment_gateway_Regesteration_No` INT NOT NULL,
  `Medicalcheckup_MRN` INT NOT NULL,
  `Medicalcheckup_Lab_Lab_id` INT NOT NULL,
  PRIMARY KEY (`Member_Mem_id`, `Member_Admin_User_id`, `Member_Payment_gateway_Regesteration_No`, `Medicalcheckup_MRN`, `Medicalcheckup_Lab_Lab_id`),
  INDEX `fk_Member_has_Medicalcheckup_Medicalcheckup1_idx` (`Medicalcheckup_MRN` ASC, `Medicalcheckup_Lab_Lab_id` ASC) VISIBLE,
  INDEX `fk_Member_has_Medicalcheckup_Member1_idx` (`Member_Mem_id` ASC, `Member_Admin_User_id` ASC, `Member_Payment_gateway_Regesteration_No` ASC) VISIBLE,
  CONSTRAINT `fk_Member_has_Medicalcheckup_Member1`
    FOREIGN KEY (`Member_Mem_id` , `Member_Admin_User_id` , `Member_Payment_gateway_Regesteration_No`)
    REFERENCES `my_project`.`Member` (`Mem_id` , `Admin_User_id` , `Payment_gateway_Regesteration_No`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Member_has_Medicalcheckup_Medicalcheckup1`
    FOREIGN KEY (`Medicalcheckup_MRN` , `Medicalcheckup_Lab_Lab_id`)
    REFERENCES `my_project`.`Medicalcheckup` (`MRN` , `Lab_Lab_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
