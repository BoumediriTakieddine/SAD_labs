DECLARE
    nom char(30); num number;

begin
    for num in 1..48 loop
        SELECT dbms_random.string('U', 30) into nom from dual;
        insert into wilaya values (num, nom);
end loop;

commit;
end;