DECLARE
    lib char(30); i number;

begin
    for i in 1..2 loop
        SELECT dbms_random.string('U', 30) into lib from dual;
        insert into types values (i,lib);
end loop;

commit;
end;