CREATE TABLE `users` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accounts` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `inventory` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'unemployed',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `skin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `users`
  ADD UNIQUE KEY `identifier` (`identifier`),
  ADD UNIQUE KEY `identifier_2` (`identifier`);

CREATE TABLE `items` (
	`name` VARCHAR(50) NOT NULL,
	`label` VARCHAR(50) NOT NULL,
	`weight` INT NOT NULL DEFAULT 1,
	`rare` TINYINT NOT NULL DEFAULT 0,
	`can_remove` TINYINT NOT NULL DEFAULT 1,

	PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `job_grades` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`job_name` VARCHAR(50) DEFAULT NULL,
	`grade` INT NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`label` VARCHAR(50) NOT NULL,
	`salary` INT NOT NULL,
	`skin_male` LONGTEXT NOT NULL,
	`skin_female` LONGTEXT NOT NULL,

	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `job_grades` VALUES (1,'unemployed',0,'unemployed','Unemployed',200,'{}','{}');

CREATE TABLE `jobs` (
	`name` VARCHAR(50) NOT NULL,
	`label` VARCHAR(50) DEFAULT NULL,

	PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `jobs` VALUES ('unemployed','Unemployed');




