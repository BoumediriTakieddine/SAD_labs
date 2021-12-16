DROP TABLE DAssure cascade constraints;
CREATE TABLE DAssure (
    NumAss number primary key, 
    NomAss varchar2(20),
    TypeAss varchar2(20),
    CodeVille number,
    NomVille varchar2(30),
    CodeWilaya number,
    NomWilaya varchar2(30)
);

BEGIN
    FOR i IN
    (SELECT a.numass, a.nomass, a.typeass, a.codeville, v.nomville, v.codewilaya, w.nomwilaya
        FROM assure a, ville v, wilaya w
        WHERE a.codeville = v.codeville
        AND v.codewilaya = w.codewilaya) LOOP
    INSERT INTO DAssure VALUES (
        i.numass, i.nomass, i.typeass, i.codeville, i.nomville, i.codewilaya, i.nomwilaya);
END LOOP;
COMMIT;
END;


