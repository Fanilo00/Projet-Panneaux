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
insert into journale_etudiant(date_heure,nbr_etudiant,statut,id_classe) values('2023-12-06 08:00:00'300,0,1);
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




create table journale_coupure
(
    id_journale_coupure serial primary key,
    date_heure_coupure_vrai timestamp,
    date_heure_coupure_prevision timestamp,
    id_section integer references section(id_section)
);


