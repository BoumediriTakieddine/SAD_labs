DECLARE
    lib char(30); marque number; i number;

begin
    for i in 1..200 loop
        SELECT dbms_random.string('U', 30) into lib from dual;
        --SELECT dbms_random.string('U', 18) into l from dual;
        SELECT floor(dbms_random.value(1,21)) into marque from dual;
        insert into modele values (i,marque,lib);
end loop;

commit;
end;