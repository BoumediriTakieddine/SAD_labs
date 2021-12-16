DECLARE
    couleur char(10); types number; modele number; i number;

begin
    for i in 1..40000 loop
        SELECT dbms_random.string('U', 10) into couleur from dual;
        SELECT floor(dbms_random.value(1,3)) into types from dual;
        SELECT floor(dbms_random.value(1,201)) into modele from dual;
        insert into vehicule values (i, types, modele, couleur);
end loop;

commit;
end;