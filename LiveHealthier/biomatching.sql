
set pagesize 0 linesize 500 trimspool on feedback off  echo off heading off sqlprompt ' ' 


select  'Total Number:' || count(distinct unique_id) 
from hraweb.bio_2011_for_paper_hra_raw w where 
 trunc(create_dt) = trunc(sysdate)
union 
(select 'Number not matching: ' || count(distinct idd)  
from  (select distinct (nvl(w.ssn_id,w.unique_id )) idd
from hraweb.bio_2011_for_paper_hra_raw w where 
 trunc(create_dt) = trunc(sysdate)
 minus
 select distinct (nvl(w.ssn_id,w.unique_id ) )idd
from hraweb.bio_2011_for_paper_hra_raw w, hra.hra_2008 h
where w.company_id='1039W' and h.company_id='1039W' 
and nvl(w.ssn_id,w.unique_id)=h.ssn and 
 trunc(create_dt) = trunc(sysdate)))
union 
select 'Number matching: ' || count(distinct unique_id)  
from hraweb.bio_2011_for_paper_hra_raw w, hra.hra_2008 h
where w.company_id='1039W' and h.company_id='1039W' 
and nvl(w.ssn_id,w.unique_id)=h.ssn and 
 trunc(create_dt) = trunc(sysdate)



spool  C:\Automated_DataLoad_Jobs\Test\LiveHealthier\matchinginfo.txt
/

 select distinct 'serial_number:' ||  h.serial_number, 'batch:' || h.batch from hraweb.bio_2011_for_paper_hra_raw w, hra.hra_2008 h
where w.company_id='1039W' and h.company_id='1039W' 
and nvl(w.ssn_id,w.unique_id)=h.ssn and 
 trunc(create_dt) = trunc(sysdate)

/
spool off

exit;




