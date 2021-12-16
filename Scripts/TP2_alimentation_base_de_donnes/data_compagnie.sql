DECLARE
    nom char(30); typec char(15); i number;

begin
    for i in 1..20 loop
        SELECT dbms_random.string('U', 30) into nom from dual;
        SELECT dbms_random.string('U', 15) into typec from dual;
        insert into compagnie values (i, nom, typec);
end loop;

commit;
end;