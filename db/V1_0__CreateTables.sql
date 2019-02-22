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
  `author_id`  int(11)      NOT NULL,
  `sequel_id`  int(11)      DEFAULT NULL,
  `name`       varchar(255) NOT NULL,
  `genre`       varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `borrow`
(
  `id`            int(11)      NOT NULL AUTO_INCREMENT,
  `customer_id`   int(11)      NOT NULL,
  `book_id`       int(11)      NOT NULL,
  `due`           timestamp,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `return`
(
  `id`            int(11)      NOT NULL AUTO_INCREMENT,
  `borrow_id`     varchar(255) NOT NULL,
  `returned`      timestamp    DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
