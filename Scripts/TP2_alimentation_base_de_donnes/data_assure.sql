DECLARE
    nom char(20); typeass char(20); ville number; i number;

begin
    for i in 1..200000 loop
        SELECT dbms_random.string('U', 20) into nom from dual;
        SELECT dbms_random.string('U', 20) into typeass from dual;
        SELECT floor(dbms_random.value(1,401)) into ville from dual;
        insert into assure values (i, ville, nom, typeass);
end loop;

commit;
end;