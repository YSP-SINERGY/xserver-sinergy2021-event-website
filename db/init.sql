CREATE DATABASE IF NOT EXISTS `votes_db`;
USE `votes_db`;

CREATE TABLE IF NOT EXISTS `youth_vote` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `vote_counts` INT NOT NULL DEFAULT 0,
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS `teens_vote` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `vote_counts` INT NOT NULL DEFAULT 0,
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS `youth_connection` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `presenter_id` INT NOT NULL DEFAULT -1,
    `ip_address` TEXT NOT NULL DEFAULT '',
    `user_agent` TEXT NOT NULL DEFAULT '',
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS `teens_connection` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `presenter_id` INT NOT NULL DEFAULT -1,
    `ip_address` TEXT NOT NULL DEFAULT '',
    `user_agent` TEXT NOT NULL DEFAULT '',
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `updated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
);

CREATE TABLE IF NOT EXISTS `youth_presenter` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `presenter_name` TEXT NOT NULL DEFAULT ''
);

CREATE TABLE IF NOT EXISTS `teens_presenter` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `presenter_name` TEXT NOT NULL DEFAULT ''
);

INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `youth_vote` (`id`) VALUES (DEFAULT);

INSERT INTO `teens_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `teens_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `teens_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `teens_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `teens_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `teens_vote` (`id`) VALUES (DEFAULT);
INSERT INTO `teens_vote` (`id`) VALUES (DEFAULT);


INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '???????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '???????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');

INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '???????????????');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '????????????');

-- DELIMITER //

-- CREATE PROCEDURE myproc()
-- BEGIN
--     DECLARE i int DEFAULT 0;
--     WHILE i < 18 DO
--         INSERT INTO `vote` (`id`) VALUES (DEFAULT);
--         SET i = i + 1;
--     END WHILE;
-- END //

-- DELIMITER ;