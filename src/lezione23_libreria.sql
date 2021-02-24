DROP database if exists lez_22_esercizio;
CREATE database homework;

create table libro (
ID_libro integer(10)  PRIMARY KEY auto_increment,
CodiceUnivoco varchar(20) unique,
Titolo varchar(20) not null

);

create table autore (
ID_autore  integer(10)  PRIMARY KEY auto_increment,
Nome varchar(10) not null,
Cognome varchar(10) not null

);

create table categoria (
ID_categoria integer(10)  PRIMARY KEY auto_increment,
nomecategoria varchar(10) not null

);

create table scrive (
ID_autore integer(10)   not null,
ID_libro integer(10)   not null,

FOREIGN KEY (ID_autore) REFERENCES autore(ID_autore) on delete cascade,
FOREIGN KEY (ID_libro) REFERENCES libro(ID_libro) on delete cascade
);



create table appartiene (
ID_categoria integer(10) not null,
ID_libro integer(10) not null,

FOREIGN KEY (ID_categoria) REFERENCES categoria(ID_categoria) on delete cascade,
FOREIGN KEY (ID_libro) REFERENCES libro(ID_libro) on delete cascade
);

create table iscritto (

ID_iscritto integer(10)  PRIMARY KEY auto_increment,
Nome varchar(10) not null,
Cognome varchar(10) not null,
cf varchar(16) unique not null,
idtessera varchar(10) unique not null

);

create table prestito (
ID_prestito integer(10) Primary key, 
DataInizio Date not null, 
DataFine Date,
ID_iscritto integer(10) not null,
ID_libro integer(10) not null,

FOREIGN KEY (ID_libro) REFERENCES libro(ID_libro) ON DELETE NO ACTION,
FOREIGN KEY (ID_iscritto) REFERENCES iscritto(ID_iscritto)  ON DELETE NO ACTION
);