CREATE DATABASE system;
CREATE TABLE Players(
nickname varchar(255),
wins int,
draws int,
losss int,
PRIMARY KEY (nickname));

CREATE TABLE Games(
name varchar(255),
played int,
PRIMARY KEY (name));

CREATE TABLE Matches(
ID int NOT NULL AUTO_INCREMENT,
challenger varchar(255),
challenger_1 varchar(255),
game varchar(255),
score smallint,
date_played date,
FOREIGN KEY (challenger) references Players(nickname),
FOREIGN KEY (challenger_1) references Players(nickname),
FOREIGN KEY (game) references Games(name));

