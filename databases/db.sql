CREATE DATABASE IF NOT EXISTS Spellcards
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE Spellcards;

DROP TABLE IF EXISTS Player;
CREATE TABLE Player (
    id           BIGINT       NOT NULL AUTO_INCREMENT,
    name         VARCHAR(45)  NOT NULL,
    character_id BIGINT       NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_pa_character
        FOREIGN KEY (character_id) REFERENCES `Character` (id)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Spellcard;
CREATE TABLE Spellcard (
    id            BIGINT        NOT NULL AUTO_INCREMENT,
    name          VARCHAR(45)   NOT NULL,
    imagen_url    VARCHAR(255),
    `type`        VARCHAR(45),
    `description` VARCHAR(255),
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Deck;
CREATE TABLE Deck (
    player_id     BIGINT NOT NULL,
    spellcard_id  BIGINT NOT NULL,
    PRIMARY KEY (player_id, spellcard_id),
    CONSTRAINT fk_pa_player
        FOREIGN KEY (player_id) REFERENCES player (id),
    CONSTRAINT fk_pa_spellcard
        FOREIGN KEY (spellcard_id) REFERENCES spellcard (id)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS `Character`;
CREATE TABLE `Character` (
    id         BIGINT  NOT NULL AUTO_INCREMENT,
    hp         INT     NOT NULL,
    attack     INT     NOT NULL,
    defense    INT     NOT NULL,
    speed      INT     NOT NULL,
    magicSP    INT     NOT NULL,
    physicSP   INT     NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Stuff;
CREATE TABLE Stuff (
    id         BIGINT  NOT NULL AUTO_INCREMENT,
    `money`   DOUBLE,
    player_id  BIGINT  NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT uq_stats_player UNIQUE (player_id),
    CONSTRAINT fk_stats_player
        FOREIGN KEY (player_id) REFERENCES player (id)
) ENGINE = InnoDB;