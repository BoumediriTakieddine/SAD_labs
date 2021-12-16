DROP TABLE DTemps cascade constraints;
CREATE TABLE DTemps (
    CodeTemps number primary key,
    Mois varchar2(2),
    LibMois varchar2(15),
    Trimestre varchar2(1),
    Annee varchar2(4)
);



