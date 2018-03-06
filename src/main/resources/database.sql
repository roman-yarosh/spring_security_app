CREATE SCHEMA IF NOT EXISTS `spring_security_app` DEFAULT CHARACTER SET utf8 ;
USE `spring_security_app`;

CREATE TABLE `spring_security_app`.`users` (
  `id` INT NOT NULL,
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `spring_security_app`.`roles` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `spring_security_app`.`user_roles` (
  `user_id` INT NOT NULL,
  `role_id` INT NOT NULL,
  FOREIGN KEY (`user_id`)  REFERENCES `spring_security_app`.`users` (`id`),
  FOREIGN KEY (`role_id`)  REFERENCES `spring_security_app`.`roles` (`id`),
  UNIQUE (user_id, role_id)
);

INSERT INTO users VALUES (1, 'roman', 'roman');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 2);