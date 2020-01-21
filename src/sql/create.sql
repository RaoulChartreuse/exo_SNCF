CREATE DATABASE IF NOT EXISTS sncf;
use sncf;

CREATE TABLE IF NOT EXISTS gare (
    codegare int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    nom varchar(50) NOT NULL,
    ville varchar(50) NOT NULL,
    addresse varchar(250),
    nquai int
);

CREATE TABLE IF NOT EXISTS rame(
    coderame int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    modele VARCHAR(10) NOT NULL,
    npremiere int,
    nseconde int
);

CREATE TABLE IF NOT EXISTS conducteur(
    codeconducteur int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    nom varchar(50) NOT NULL,
    prenom varchar(50),
    secu varchar(20)
);

/*
CREATE TABLE IF NOT EXISTS trajet(
    codetrajet int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    garedepart int FOREIGN KEY references gare(codegare),
    garearrivee int FOREIGN KEY references gare(codegare),
    conducteur int NOT NULL FOREIGN KEY references conducteur(codeconducteur),
    rame int NOT NULL FOREIGN KEY references rame(coderame),
    depart datetime NOT NULL,
    duree TIME
);*/
CREATE TABLE IF NOT EXISTS trajet(
    codetrajet int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    garedepart int,
    garearrivee int,
    conducteur int,
    rame int,
    depart datetime NOT NULL,
    duree TIME,
    FOREIGN KEY (garedepart) REFERENCES gare(codegare),
    FOREIGN KEY (garearrivee) REFERENCES gare(codegare),
    FOREIGN KEY (conducteur) REFERENCES conducteur(codeconducteur),
    FOREIGN KEY (rame) REFERENCES rame(coderame)
);	  

/*
CREATE USER IF NOT EXIST 'user'@'%' IDENTIFIED BY 'user';
GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';
*/
