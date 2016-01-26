 set linesize 300
 spool C:\Automated_DataLoad_Jobs\Test\morrissey\spouse_same_id.txt
  select *
  from PER_MORRISEY_raw
   where (last_nm, hbg_unique_id) in (Select last_nm, hbg_unique_id
   from PER_MORRISEY_raw group by last_nm, hbg_unique_id having count(distinct dob_dt) > 1)
  order by last_nm, hbg_unique_id;
spool off

exit;


