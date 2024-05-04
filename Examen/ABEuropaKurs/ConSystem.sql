create database consystem;

create table Kategorie(
    Kategorie_ID int, 
    Bezeichung varchar(255),
);

create table Ressource(
    Ressource_ID int NOT NULL,
    Bezeichung varchar(255),
    Hersteller varchar(255),
    Kategorie_ID int,
    Primary Key (Ressource_ID),
    Foreign Key (Ressource_ID) References Ressource(Ressource_ID),
);

create table Ressource_Projekt(
    Ressource_ID int,
    Projekt_ID int,
    Foreign Key (Ressource_ID) References Ressource(Ressource_ID),
    Foreign Key (Projekt_ID) References
)

create table Projekt(
    Projekt_ID int,
    Bezeichung varchar(255),
    Startdatum date,
    enddatum date,
    Primary Key(Projekt_ID),
);