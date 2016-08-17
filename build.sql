DROP DATABASE IF EXISTS kalonline;

CREATE DATABASE kalonline;
USE kalonline;

CREATE TABLE account (
	idaccount INT AUTO_INCREMENT,
	login VARCHAR(30) NOT NULL,
	password VARCHAR(30) NOT NULL,
	secondary VARCHAR(8),

	PRIMARY KEY (idaccount),
	UNIQUE (login)
);

CREATE TABLE player (
	idplayer INT AUTO_INCREMENT,
	idaccount INT NOT NULL,
	name VARCHAR(30) NOT NULL,
	job TINYINT NOT NULL DEFAULT 1,
	class TINYINT NOT NULL,
	level TINYINT NOT NULL DEFAULT 100,
	x INT NOT NULL DEFAULT 360931, #map 44 
	y INT NOT NULL DEFAULT 187024, #map 22
	z INT NOT NULL DEFAULT 42140,
	strength SMALLINT NOT NULL,
	health SMALLINT NOT NULL,
	inteligence SMALLINT NOT NULL,
	wisdom SMALLINT NOT NULL,
	dexterity SMALLINT NOT NULL,
	contribute SMALLINT NOT NULL DEFAULT 0,
	curhp SMALLINT NOT NULL,
	curmp SMALLINT NOT NULL,
	exp BIGINT NOT NULL DEFAULT 0,
	pupoint SMALLINT NOT NULL DEFAULT 345,
	supoint SMALLINT NOT NULL DEFAULT 69,
	anger INT NOT NULL DEFAULT 0,
	face TINYINT NOT NULL,
	hair TINYINT NOT NULL,
	deleted TINYINT NOT NULL DEFAULT 0,

	PRIMARY KEY (idplayer),
	FOREIGN KEY (idaccount) 
		REFERENCES account (idaccount),
	UNIQUE(name)
);

CREATE TABLE item (
	iditem INT AUTO_INCREMENT,
	idplayer INT NOT NULL,
	`index` SMALLINT NOT NULL,
	num INT NOT NULL DEFAULT 1,
	info INT NOT NULL DEFAULT 0,
	prefix TINYINT NOT NULL DEFAULT 0,
	curend TINYINT NOT NULL DEFAULT 0,
	maxend TINYINT NOT NULL DEFAULT 0,
	xattack TINYINT NOT NULL DEFAULT 0,
	xmagic TINYINT NOT NULL DEFAULT 0,
	xdefense TINYINT NOT NULL DEFAULT 0,
	xhit TINYINT NOT NULL DEFAULT 0,
	xdodge TINYINT NOT NULL DEFAULT 0,
	explosiveblow TINYINT NOT NULL DEFAULT 0,
	fusion TINYINT NOT NULL DEFAULT 0,
	fmeele SMALLINT NOT NULL DEFAULT 0,
	fmagic SMALLINT NOT NULL DEFAULT 0,
	fdefense SMALLINT NOT NULL DEFAULT 0,
	fabsorb SMALLINT NOT NULL DEFAULT 0,
	fevasion TINYINT NOT NULL DEFAULT 0,
	fhit TINYINT NOT NULL DEFAULT 0,
	fhp TINYINT NOT NULL DEFAULT 0,
	fmp TINYINT NOT NULL DEFAULT 0,
	fstr TINYINT NOT NULL DEFAULT 0,
	fhth TINYINT NOT NULL DEFAULT 0,
	fint TINYINT NOT NULL DEFAULT 0,
	fwis TINYINT NOT NULL DEFAULT 0,
	fdex TINYINT NOT NULL DEFAULT 0,
	shot TINYINT NOT NULL DEFAULT 0,
	perforation SMALLINT NOT NULL DEFAULT 0,
	gongleft INT NOT NULL DEFAULT 0,
	gongright INT NOT NULL DEFAULT 0,

	PRIMARY KEY (iditem),
	FOREIGN KEY (idplayer)
		REFERENCES player (idplayer)
);

INSERT INTO account (login, password, secondary)
	VALUES
	('qwe', 'asd', '00000000'),
	('qwe1', 'asd', '00000000')
;

INSERT INTO player (idaccount, name, class, strength, health, inteligence, wisdom, dexterity, curhp, curmp, face, hair)
	VALUES
	(1, 'test', 0, 18, 21, 8, 8, 10, 200, 200, 1, 1);

INSERT INTO item (idplayer, `index`)
	VALUES
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),

	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),

	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),

	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),

	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),

	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),

	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),
	(1, 1124),

	(1, 1124),
	(1, 1124);