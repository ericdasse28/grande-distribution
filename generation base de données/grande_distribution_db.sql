-- MySQL Script generated by MySQL Workbench
-- Fri Apr 10 14:50:31 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema grande_distribution_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema grande_distribution_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `grande_distribution_db` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema new_schema1
-- -----------------------------------------------------
USE `grande_distribution_db` ;

-- -----------------------------------------------------
-- Table `grande_distribution_db`.`Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grande_distribution_db`.`Article` (
  `ref_produit` VARCHAR(13) NOT NULL,
  `nom_long` VARCHAR(45) NULL,
  `nom_court` VARCHAR(45) NULL,
  `sous_famille_distri_code` VARCHAR(5) NULL,
  `famille_distri_code` VARCHAR(5) NULL,
  `categorie_code` VARCHAR(3) NULL,
  `nomenclature` CHAR(10) NULL,
  `nomenclature_alternative` CHAR(10) NULL,
  `code_tva` CHAR(1) NULL,
  `prix_achat` DOUBLE NULL,
  PRIMARY KEY (`ref_produit`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grande_distribution_db`.`Magasin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grande_distribution_db`.`Magasin` (
  `code_etablissement` CHAR(3) NOT NULL,
  `adresse` VARCHAR(45) NULL,
  `code_postal` VARCHAR(5) NULL,
  `ville` VARCHAR(45) NULL,
  `num_mistral` CHAR(4) NULL,
  PRIMARY KEY (`code_etablissement`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grande_distribution_db`.`Fait_Ventes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grande_distribution_db`.`Fait_Ventes` (
  `id_vente` VARCHAR(40) NOT NULL,
  `num_ticket` CHAR(10) NOT NULL,
  `id_date_vente` CHAR(8) NULL,
  `ref_produit` VARCHAR(13) NULL,
  `code_magasin` CHAR(3) NULL,
  `heure_vente` CHAR(4) NULL,
  `customer_code` CHAR(10) NULL,
  `department_code` VARCHAR(2) NULL,
  `description` VARCHAR(45) NULL,
  `code_client` CHAR(1) NULL,
  `code_tva` VARCHAR(2) NULL,
  `prix_achat` DOUBLE NULL,
  `quantite` FLOAT NULL,
  `prix_vente` DOUBLE NULL,
  PRIMARY KEY (`id_vente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grande_distribution_db`.`Temps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grande_distribution_db`.`Temps` (
  `lb_date` DATE NOT NULL,
  `id_date` CHAR(8) NOT NULL,
  `jour` VARCHAR(8) NULL,
  `code_mois` VARCHAR(2) NULL,
  `mois` VARCHAR(10) NULL,
  `trimestre` CHAR(1) NULL,
  `semestre` CHAR(1) NULL,
  `annee` YEAR NULL,
  PRIMARY KEY (`id_date`),
  UNIQUE INDEX `date_UNIQUE` (`lb_date` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grande_distribution_db`.`Nomenclature`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `grande_distribution_db`.`Nomenclature` (
  `idNomenclature` CHAR(10) NOT NULL,
  `libelle` VARCHAR(45) NULL,
  PRIMARY KEY (`idNomenclature`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
