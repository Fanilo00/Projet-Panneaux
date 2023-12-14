--puissance batterie:24000W
create table batterie
(
    id_batterie serial primary key,
    puissance_batterie int
);

-- puissance panneau:35000W
create table pStranneau
(
    id_panneau serial primary key,
    puissance_panneau int,
    id_batterie integer references batterie(id_batterie)
);


create table classe
(
    id_classe serial primary key,
    nom_classe varchar(40)
);



create table section
(
    id_section serial primary key ,
    nom_section varchar(40)
);


create table section_classe_panneau
(
    id_section integer references section(id_section),
    id_panneau integer references panneau(id_panneau),
    id_classe integer references classe(id_classe)
);




create table journale_etudiant
(
    id_journal_etudiant serial primary key,
    date_heure timestamp,
    nbr_etudiant int,
    statut int,
    id_classe integer references classe(id_classe)
);


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


