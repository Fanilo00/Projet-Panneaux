--puissance de panneau par section
create or replace view puissance_panneau_par_section as 
select id_section,panneau.id_panneau,puissance_panneau,id_classe
 from section_classe_panneau 
join panneau on panneau.id_panneau=section_classe_panneau.id_panneau;

-- puissance des panneau*nombre de panneau PAR SECTION
create or replace view puissance_total_panneau_par_section as 
SELECT id_section, puissance_panneau * COUNT(puissance_panneau) AS total_puissance
FROM puissance_panneau_par_section
GROUP BY id_section, puissance_panneau;

--puissance de batterie par section 
create or replace view puissance_batterie_par_section as
select id_section,puissance_batterie from section_classe_panneau 
join panneau on section_classe_panneau.id_panneau=panneau.id_panneau 
join batterie on panneau.id_batterie=batterie.id_batterie;

create or replace view puissance_total_batterie_par_Section as 
select id_section,puissance_batterie* COUNT(puissance_batterie) as total_puissance_batterie
from puissance_batterie_par_section
group by id_section,puissance_batterie;

create or replace view view_etudiant as 
select journale_etudiant.id_journal_etudiant,date_heure,statut,nbr_etudiant,journale_etudiant.id_classe,id_section 
from journale_etudiant join section_classe_panneau on journale_etudiant.id_classe = section_classe_panneau.id_classe;

-- moyenne nbr_etudiant
    create or replace view moy_etu as
    SELECT DISTINCT
    date_heure, statut, id_section, ROUND(AVG(nbr_etudiant) OVER (PARTITION BY date_heure, statut, id_section)) 
    AS moyenne_etudiant FROM journale_etudiant JOIN section_classe_panneau 
    ON journale_etudiant.id_classe = section_classe_panneau.id_classe order by date_heure ;


    --hilaina am prevision
    create or replace view moy_etu_mercredi as 
    SELECT *
    FROM journale_lumiere
    WHERE EXTRACT(DOW FROM date_heure_lumiere) = 3; -- 3 représente le mercredi



--consommation


    