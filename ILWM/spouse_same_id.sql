 set linesize 300
 spool C:\Automated_DataLoad_Jobs\Test\morrissey\spouse_same_id.txt
 select *
  from per_morrisey
   where (last_name, hbg_unique_id) in (Select last_name, hbg_unique_id
   from per_morrisey group by last_name, hbg_unique_id having count(distinct date_of_birth) > 1)
  order by last_name, hbg_unique_id;
spool off

exit;


