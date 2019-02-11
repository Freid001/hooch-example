#SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS example;

USE example;

CREATE TABLE IF NOT EXISTS `customer`
(
  `id`         int(11)      NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name`  varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `author`
(
  `id`         int(11)      NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name`  varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `book`
(
  `id`         int(11)      NOT NULL AUTO_INCREMENT,
  `name`       varchar(255) NOT NULL,
  `genre`       varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `library`
(
  `id`         int(11)      NOT NULL AUTO_INCREMENT,
  `name`       varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `borrow`
(
  `id`         int(11)      NOT NULL AUTO_INCREMENT,
  `name`       varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

INSERT INTO `customer` (`id`, `first_name`, `last_name`) VALUES (1, 'john', 'smith'),
                                                                (2, 'amelia', 'jones'),
                                                                (3, 'millie', 'brown');

INSERT INTO `book` (`id`, `name`, `genre`) VALUES (1, 'the hunger games', 'dystopia'),
                                                   (2, 'the hitchhikers guide to the galaxy', 'fantasy'),
                                                   (3, 'the jungle book', 'children'),
                                                   (4, 'mary poppins', 'children'),
                                                   (5, 'war of the worlds', 'fantasy'),
                                                   (6, 'the time machine', 'fantasy'),
                                                   (7, 'restaurants at the end of the universe', 'fantasy'),
                                                   (8, 'murder on the orient express', 'crime'),
                                                   (9, 'death on the nile', 'crime'),
                                                   (10, 'a study in scarlet', 'detective'),
                                                   (11, 'the hound of the baskervilles', 'detective'),
                                                   (12, 'romeo and juliet', 'romance'),
                                                   (13, 'pride and prejudice', 'romance'),
                                                   (14, 'the tiger who came to tea', 'children'),
                                                   (15, 'the very hungry caterpillar', 'children'),
                                                   (16, 'it', 'horror'),
                                                   (17, 'dracula', 'horror'),
                                                   (18, 'the hunt for red october', 'thriller'),
                                                   (19, 'the girl on the train', 'thriller'),
                                                   (20, 'rainbow six ', 'thriller');