DROP TABLE DCompagnie cascade constraints;
CREATE TABLE DCompagnie (
    CodeComp number primary key,
    NomComp varchar2(30),
    TypeComp varchar2(15)
);

BEGIN
    FOR i IN
    (SELECT c.codecomp, c.nomcomp, c.typecomp
        FROM compagnie c) LOOP
    INSERT INTO DCompagnie VALUES (
        i.codecomp, i.nomcomp, i.typecomp);
END LOOP;
COMMIT;
END;


