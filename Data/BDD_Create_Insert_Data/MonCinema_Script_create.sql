SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `Cinema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `Cinema` ;

-- -----------------------------------------------------
-- Table `Cinema`.`individus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`individus` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`individus` (
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Individu` TINYTEXT NULL DEFAULT NULL,
  `Sexe` CHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`Nr_Individus`))
ENGINE = InnoDB
AUTO_INCREMENT = 2447
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Cinema`.`nationalites`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`nationalites` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`nationalites` (
  `Nr_Nation` CHAR(3) NOT NULL,
  `Nom` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`Nr_Nation`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Cinema`.`acteurs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`acteurs` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`acteurs` (
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Nation` CHAR(3) NOT NULL,
  PRIMARY KEY (`Nr_Individus`),
  CONSTRAINT `fk_acteurs_individus`
    FOREIGN KEY (`Nr_Individus`)
    REFERENCES `Cinema`.`individus` (`Nr_Individus`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_acteurs_nationalites`
    FOREIGN KEY (`Nr_Nation`)
    REFERENCES `Cinema`.`nationalites` (`Nr_Nation`)
    ON DELETE NO ACTION
    ON UPDATE RESTRICT)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_acteurs_nationalites_idx` ON `Cinema`.`acteurs` (`Nr_Nation` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`film`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`film` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`film` (
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Titre` TEXT NULL DEFAULT NULL,
  `Synopsis` TEXT NULL DEFAULT NULL,
  `Affiche` TEXT NULL DEFAULT NULL,
  `DVD` TINYINT(1) NULL DEFAULT NULL,
  `Date_Modif_Film` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`Nr_Film`))
ENGINE = InnoDB
AUTO_INCREMENT = 843
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Cinema`.`scenariste`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`scenariste` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`scenariste` (
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`Nr_Individus`),
  CONSTRAINT `fk_scenariste_individus`
    FOREIGN KEY (`Nr_Individus`)
    REFERENCES `Cinema`.`individus` (`Nr_Individus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Cinema`.`a_ecrit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`a_ecrit` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`a_ecrit` (
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`Nr_Film`, `Nr_Individus`),
  CONSTRAINT `fk_a_ecrit_film`
    FOREIGN KEY (`Nr_Film`)
    REFERENCES `Cinema`.`film` (`Nr_Film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_a_ecrit_scenariste`
    FOREIGN KEY (`Nr_Individus`)
    REFERENCES `Cinema`.`scenariste` (`Nr_Individus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_a_ecrit_scenariste_idx` ON `Cinema`.`a_ecrit` (`Nr_Individus` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`cinephile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`cinephile` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`cinephile` (
  `Nr_cinephile` SMALLINT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Password` VARCHAR(30) NULL DEFAULT NULL,
  `Nom_Cinephile` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`Nr_cinephile`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Cinema`.`genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`genre` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`genre` (
  `Id_Genre` SMALLINT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nom_Genre` CHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`Id_Genre`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `Cinema`.`est_classe_dans_le`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`est_classe_dans_le` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`est_classe_dans_le` (
  `Id_Genre` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id_Genre`, `Nr_Film`),
  CONSTRAINT `fk_est_classe_dans_film`
    FOREIGN KEY (`Nr_Film`)
    REFERENCES `Cinema`.`film` (`Nr_Film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_est_classe_dans_genre`
    FOREIGN KEY (`Id_Genre`)
    REFERENCES `Cinema`.`genre` (`Id_Genre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_est_classe_dans_film_idx` ON `Cinema`.`est_classe_dans_le` (`Nr_Film` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`est_d_origine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`est_d_origine` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`est_d_origine` (
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Nation` CHAR(3) NOT NULL,
  PRIMARY KEY (`Nr_Film`, `Nr_Nation`),
  CONSTRAINT `fk_est_origine_film`
    FOREIGN KEY (`Nr_Film`)
    REFERENCES `Cinema`.`film` (`Nr_Film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_est_origine_nationalite`
    FOREIGN KEY (`Nr_Nation`)
    REFERENCES `Cinema`.`nationalites` (`Nr_Nation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_est_origine_nationalite_idx` ON `Cinema`.`est_d_origine` (`Nr_Nation` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`est_interpreter_par`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`est_interpreter_par` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`est_interpreter_par` (
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`Nr_Film`, `Nr_Individus`),
  CONSTRAINT `fk_est_interpreter_par_film`
    FOREIGN KEY (`Nr_Film`)
    REFERENCES `Cinema`.`film` (`Nr_Film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_est_interpreter_par_acteur`
    FOREIGN KEY (`Nr_Individus`)
    REFERENCES `Cinema`.`acteurs` (`Nr_Individus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_est_interpreter_par_acteur_idx` ON `Cinema`.`est_interpreter_par` (`Nr_Individus` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`est_la_voix_off`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`est_la_voix_off` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`est_la_voix_off` (
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL,
  `personnage` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Nr_Film`, `Nr_Individus`),
  CONSTRAINT `fk_est_la_voix_off_film`
    FOREIGN KEY (`Nr_Film`)
    REFERENCES `Cinema`.`film` (`Nr_Film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_est_la_voix_off_acteur`
    FOREIGN KEY (`Nr_Individus`)
    REFERENCES `Cinema`.`acteurs` (`Nr_Individus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_est_la_voix_off_acteur_idx` ON `Cinema`.`est_la_voix_off` (`Nr_Individus` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`realisateurs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`realisateurs` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`realisateurs` (
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Nation` CHAR(3) NOT NULL,
  PRIMARY KEY (`Nr_Individus`),
  CONSTRAINT `fk_realisateur_individus`
    FOREIGN KEY (`Nr_Individus`)
    REFERENCES `Cinema`.`individus` (`Nr_Individus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_realisateur_nationalite`
    FOREIGN KEY (`Nr_Nation`)
    REFERENCES `Cinema`.`nationalites` (`Nr_Nation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_realisateur_nationalite_idx` ON `Cinema`.`realisateurs` (`Nr_Nation` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`est_realise_par`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`est_realise_par` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`est_realise_par` (
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Individus` SMALLINT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`Nr_Film`, `Nr_Individus`),
  CONSTRAINT `fk_est_realise_par_film`
    FOREIGN KEY (`Nr_Film`)
    REFERENCES `Cinema`.`film` (`Nr_Film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_est_realise_par_realisateur`
    FOREIGN KEY (`Nr_Individus`)
    REFERENCES `Cinema`.`realisateurs` (`Nr_Individus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_est_realise_par_realisateur_idx` ON `Cinema`.`est_realise_par` (`Nr_Individus` ASC);


-- -----------------------------------------------------
-- Table `Cinema`.`note`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cinema`.`note` ;

CREATE TABLE IF NOT EXISTS `Cinema`.`note` (
  `Nr_Note` SMALLINT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nr_cinephile` SMALLINT(4) UNSIGNED NOT NULL,
  `Nr_Film` SMALLINT(4) UNSIGNED NOT NULL,
  `Note_Film` SMALLINT(6) NULL DEFAULT NULL,
  `Date_vu` DATE NULL DEFAULT NULL,
  `Date_modif_note` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`Nr_Note`),
  CONSTRAINT `fk_note_cinephile`
    FOREIGN KEY (`Nr_cinephile`)
    REFERENCES `Cinema`.`cinephile` (`Nr_cinephile`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_note_film`
    FOREIGN KEY (`Nr_Film`)
    REFERENCES `Cinema`.`film` (`Nr_Film`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1440
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_note_cinephile_idx` ON `Cinema`.`note` (`Nr_cinephile` ASC);

CREATE INDEX `fk_note_film_idx` ON `Cinema`.`note` (`Nr_Film` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
