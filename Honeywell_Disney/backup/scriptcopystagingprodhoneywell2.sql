set serveroutput on size 1000000
declare 
new_tbl varchar2(100);
yyyymmdd varchar2(100);

begin 
select to_char(next_day(sysdate, 'WEDNESDAY') + 4, 'yyyymmdd') into yyyymmdd from dual;

new_tbl := 'cigna_hw_elig_' || yyyymmdd;
copy_disney_perj(new_tbl, yyyymmdd);





end;
/
exit;
