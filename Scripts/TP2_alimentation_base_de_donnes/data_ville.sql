DECLARE
    nom char(30); wilaya number; i number;

begin
    for i in 1..400 loop
        SELECT dbms_random.string('U', 30) into nom from dual;
        SELECT floor(dbms_random.value(1,49)) into wilaya from dual;
        insert into ville values (i, wilaya, nom);
end loop;

commit;
end;