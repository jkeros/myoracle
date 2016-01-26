
set pagesize 0 linesize 500 trimspool on feedback off  echo off heading off sqlprompt ' ' 

select member_ssn from person_granville where member_ssn is not null 
group by member_ssn 
having count(distinct member_unique_id || member_first_name || member_last_name) > 1



spool  C:\Automated_DataLoad_Jobs\Test\healthscope\ssninfo.txt
/


spool off

exit;




