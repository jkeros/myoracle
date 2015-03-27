set pagesize 0 linesize 500 trimspool on feedback off heading off echo off sqlprompt ' ' colsep ,


select  ssn, scan_date from (
select 'Unique ID' ssn, 'Scan Date' scan_date , 0 ordercol from dual
union all
select distinct ssn, to_char(scan_date), 1 ordercol from hra.hra_2008 where 
ssn in (
select ssn from hra.hra_2008 
where company_id = '1039W' 
minus
select nvl(w.ssn,w.unique_id) from bio_2011_for_paper_hra w 
where w.company_id='1039W'and receive_date >= '01-jan-14')
order by 3,1)

spool v:\CBT_HRA_Parts_No_Bio.csv
/
spool off


set pagesize 0 linesize 500 trimspool on feedback off heading off echo off sqlprompt ' ' colsep ,


select  ssn, bio_date from (
select 'Unique ID' ssn, 'Bio Date' bio_date , 0 ordercol from dual
union all
select distinct ssn, to_char(bio_date), 1 ordercol from bio_2011_for_paper_hra w where 
w.company_id='1039W' and receive_date > '01-jan-14'
and nvl(w.ssn, w.unique_id)
 in (
select nvl(w.ssn, w.unique_id) from bio_2011_for_paper_hra w 
where company_id = '1039W' and receive_date > '01-jan-14'
minus
select ssn from hra.hra_2008 
where company_id = '1039W' )
order by 3,1)


spool  v:\CBT_Bio_Parts_No_HRA.csv
/
spool off
exec pk_securefile.file_ready_notification(95,118,'g:\share\data_export\LIVEHEALTHIER\CBT_Bio_Parts_No_HRA.csv','Catherine here from live healthier is the csv file for bio with no hra ');
exec pk_securefile.file_ready_notification(95,118,'g:\share\data_export\LIVEHEALTHIER\CBT_HRA_Parts_No_Bio.csv','Catherine here from live healthier is the csv file for hra with no bio ');
exec pk_securefile.file_ready_notification(95,85,'g:\share\data_export\LIVEHEALTHIER\CBT_Bio_Parts_No_HRA.csv','Lingzhi here from live healthier is the csv file for bio with no hra ');
exec pk_securefile.file_ready_notification(95,85,'g:\share\data_export\LIVEHEALTHIER\CBT_HRA_Parts_No_Bio.csv','Lingzhi here from live healthier is the csv file for hra with no bio ');
exec pk_securefile.file_ready_notification(95,25682,'g:\share\data_export\LIVEHEALTHIER\CBT_Bio_Parts_No_HRA.csv','Jonathan, here from live healthier is the csv file for bio with no hra ');
exec pk_securefile.file_ready_notification(95,25682,'g:\share\data_export\LIVEHEALTHIER\CBT_HRA_Parts_No_Bio.csv','Jonathan, here from live healthier is the csv file for hra no bio ');
exec pk_securefile.file_ready_notification(95,25862,'g:\share\data_export\LIVEHEALTHIER\CBT_HRA_Parts_No_Bio.csv','Hunter, here from live healthier is the csv file for hra with no bio ');
exec pk_securefile.file_ready_notification(95,25862,'g:\share\data_export\LIVEHEALTHIER\CBT_Bio_Parts_No_HRA.csv','Hunter, here from live healthier is the csv file for bio with no hra ');
exit;
