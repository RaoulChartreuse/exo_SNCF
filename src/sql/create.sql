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
    secu varchar(13)
);


CREATE TABLE IF NOT EXISTS trajet(
    codetrajet int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    garedepart int NOT NULL FOREIGN KEY references gare(codegare),
    garearrivee int NOT NULL FOREIGN KEY references gare(codegare),
    conducteur int NOT NULL FOREIGN KEY references conducteur(codeconducteur),
    rame int NOT NULL FOREIGN KEY references rame(coderame),
    depart date NOT NULL,
    duree TIME
);
