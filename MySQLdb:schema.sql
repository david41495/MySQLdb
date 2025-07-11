-- Table `mydb`.`Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Meetings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Meetings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `client_id` INT NULL,
  `date` DATE NULL,
  `time` TIME NULL,
  `attendees` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_meeting_client_idx` (`client_id` ASC) VISIBLE,
  CONSTRAINT `fk_meeting_client`
    FOREIGN KEY (`client_id`)
    REFERENCES `mydb`.`Clients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
