CREATE SCHEMA `job_portal` ;

CREATE TABLE `job_portal`.`jobs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `pdate` TIMESTAMP NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `job_portal`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `qualificationl` VARCHAR(45) NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
