#약관

create table RP_TERMS(
	terms text,
	privacy text
);
#회원
s
create table RP_MEMBER(
	uid varchar(20) primary key,
	pass varchar(255),
	name varchar(20),
	nick varchar(20) unique,
	email varchar(20) unique,
	hp		char(13) unique,
	grade	tinyint default 2,
	zip	char(5) default null,
	addr1	varchar(255) default null,
	addr2	varchar(255) default null,
	regip	varchar(100),
	rdate	datetime
);

#게시판

CREATE TABLE `RP_ARTICLE` (
	`seq` 		INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0, 
	`cate`		VARCHAR(10) DEFAULT 'free',
	`title`		VARCHAR(255) DEFAULT NULL,
	`content`	TEXT,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20),
	`regip`		VARCHAR(100),
	`rdate`		DATETIME
);

