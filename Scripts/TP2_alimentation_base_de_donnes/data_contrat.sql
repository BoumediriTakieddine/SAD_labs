DECLARE
    d date; mat char(10); ass number; comp number; mont number; i number;

begin
    for i in 1..800000 loop
        SELECT floor(dbms_random.value(1,40001)) into mat from dual;
        SELECT floor(dbms_random.value(1,200001)) into ass from dual;
        SELECT floor(dbms_random.value(1,21)) into comp from dual;
        SELECT to_date(trunc(dbms_random.value(to_char(date '2015-01-01', 'j'), to_char(date '2017-12-31', 'j'))), 'j') into d from dual;
        SELECT trunc(dbms_random.value(5000,100000),2) into mont from dual;
        insert into contrat values (i, ass, comp, mat, d, mont);
end loop;

commit;
end;

