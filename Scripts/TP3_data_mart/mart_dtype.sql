DROP TABLE DType cascade constraints;
CREATE TABLE DType (
    CodeType number primary key,
    LibelleType varchar2(30)
);

BEGIN
    FOR i IN
    (SELECT t.codetype, t.libelletype
        FROM types t) LOOP
    INSERT INTO DType VALUES (
        i.codetype, i.libelletype);
END LOOP;
COMMIT;
END;


