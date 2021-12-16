DROP TABLE DModele cascade constraints;
CREATE TABLE DModele (
    CodeMod number primary key,
    LibMod varchar2(30),
    CodeMarque number,
    LibMarque varchar2(20),
    Nationalite varchar2(20)
);

BEGIN
    FOR i IN
    (SELECT m.codemodele, m.libellemodel, m.codemarque, q.libeliemarque, q.nationalite
        FROM modele m, marque q
        WHERE m.codemarque = q.codemarque) LOOP
    INSERT INTO DModele VALUES (
        i.codemodele, i.libellemodel, i.codemarque, i.libeliemarque, i.nationalite);
END LOOP;
COMMIT;
END;




