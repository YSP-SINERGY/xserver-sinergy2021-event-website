DROP DATABASE `votes_db`;
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

INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '大友希野');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '遠藤友香');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '舟橋彰馬');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '東郷泰暉');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '小野村華楠');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '五十嵐大修');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '齋藤柱導');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '熊谷有未');
INSERT INTO `youth_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '本田裕明');

INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '菅俣登子');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '山川莉実花');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '小貫朝心');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '水沼千乃');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '田井理蓮');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '佐藤彩乃');
INSERT INTO `teens_presenter` (`id`, `presenter_name`) VALUES (DEFAULT, '川見菜緒');
