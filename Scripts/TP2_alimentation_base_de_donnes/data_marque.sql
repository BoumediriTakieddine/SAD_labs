DECLARE 
    l char(20); n char(20); i number;

begin
    for i in 1..20 loop 
        SELECT dbms_random.string('U', 18) into n from dual;
        SELECT dbms_random.string('U', 18) into l from dual;
        insert into marque values (i,l,n);
end loop;

commit;
end;