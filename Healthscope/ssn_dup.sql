
set pagesize 0 linesize 500 trimspool on feedback off  echo off heading off sqlprompt ' ' 

select case when thecount = 0 then ''  else ' NOTE.....THERE ARE DUPLICATE SSNs' end  from (
select count(*) thecount from (
select member_ssn from person_granville where member_ssn is not null 
group by member_ssn 
having count(distinct member_unique_id || member_first_name || member_last_name) > 1) tt ) tw




spool  C:\Automated_DataLoad_Jobs\Test\healthscope\ssninfo.txt
/


spool off

exit;




