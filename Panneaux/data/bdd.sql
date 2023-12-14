--puissance batterie:24000W
create table batterie
(
    id_batterie serial primary key,
    puissance_batterie int
);

insert into batterie(puissance_batterie) values(19200);

-- puissance panneau:35000W
create table pStranneau
(
    id_panneau serial primary key,
    puissance_panneau int,
    id_batterie integer references batterie(id_batterie)
);

insert into panneau(puissance_panneau,id_batterie) values(25000,1);

create table classe
(
    id_classe serial primary key,
    nom_classe varchar(40)
);

insert into classe(nom_classe) values('classe1');

create table section
(
    id_section serial primary key ,
    nom_section varchar(40)
);

insert into section(nom_section) values('section1');


create table section_classe_panneau
(
    id_section integer references section(id_section),
    id_panneau integer references panneau(id_panneau),
    id_classe integer references classe(id_classe)
);

insert into section_classe_panneau(id_section,id_panneau,id_classe) values(1,1,1);


create table journale_etudiant
(
    id_journal_etudiant serial primary key,
    date_heure timestamp,
    nbr_etudiant int,
    statut int,
    id_classe integer references classe(id_classe)
);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-01 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-01 14:00:00',280,1,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-02 08:00:00',250,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-02 14:00:00',240,1,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-03 08:00:00',220,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-06 08:00:00',320,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-06 14:00:00',330,1,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-07 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-07 14:00:00',290,1,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-08 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-08 14:00:00',280,1,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-09 08:00:00',250,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-09 14:00:00',240,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-10 08:00:00',220,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-10 14:00:00',210,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-13 08:00:00',320,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-13 14:00:00',330,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-14 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-14 14:00:00',290,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-15 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-15 14:00:00',280,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-16 08:00:00',250,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-16 14:00:00',240,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-17 08:00:00',220,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-17 14:00:00',210,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-20 08:00:00',320,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-20 14:00:00',330,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-21 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-21 14:00:00',290,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-22 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-22 14:00:00',280,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-23 08:00:00',250,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-23 14:00:00',240,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-24 08:00:00',220,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-24 14:00:00',210,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-27 08:00:00',320,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-27 14:00:00',330,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-28 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-28 14:00:00',290,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-29 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-29 14:00:00',280,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-30 08:00:00',250,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-11-30 14:00:00',240,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-04 08:00:00',320,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-04 14:00:00',330,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-05 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-05 14:00:00',290,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-06 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-06 14:00:00',280,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-07 08:00:00',250,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-07 14:00:00',240,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-08 08:00:00',220,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-08 14:00:00',210,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-11 08:00:00',320,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-11 14:00:00',330,1,1);

insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-12 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-12 14:00:00',290,1,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-13 08:00:00',300,0,1);
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-13 14:00:00',280,1,1);




create table journale_lumiere
(
    id_journale_lumiere serial primary key,
    date_heure_lumiere timestamp,
    niveau decimal(2,1)
);


insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-01 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-02 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-03 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-06 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-07 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-08 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-09 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-10 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-13 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-14 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-15 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-16 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-17 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-20 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-22 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-23 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-24 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-27 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-28 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-29 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-11-30 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-04 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-05 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-06 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-07 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-08 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-11 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-12 17:00:00',0.4);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 08:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 09:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 10:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 11:00:00',0.9);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 14:00:00',0.8);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 15:00:00',0.7);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 16:00:00',0.6);
insert into journale_lumiere(date_heure_lumiere,niveau)values('2023-12-13 17:00:00',0.4);







create table journale_coupure
(
    id_journale_coupure serial primary key,
    date_coupure_vrai date,
    heure_coupure_vrai time,
    id_section integer references section(id_section)
);


insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-01','15:45:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-02','16:30:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-03','17:00:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-06','15:00:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-07','15:40:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-08','15:45:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-09','16:29:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-10','17:01:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-13','15:02:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-14','15:42:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-15','15:43:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-16','16:32:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-17','17:03:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-20','14:55:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-21','15:35:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-22','15:40:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-23','16:24:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-24','16:55:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-27','15:04:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-28','15:44:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-29','15:49:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-11-30','16:33:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-04','17:06:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-05','14:59:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-06','15:39:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-07','16:28:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-08','17:00:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-11','15:46:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-12','16:32:00',1);
insert into journale_coupure(date_coupure_vrai,heure_coupure_vrai,id_section) values('2023-12-13','17:01:00',1);



