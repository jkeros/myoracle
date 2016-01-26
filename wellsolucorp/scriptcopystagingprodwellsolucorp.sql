--
--- insert into all_company_codes if there are any new company codes.

/* insert into all_company_codes (company_cd, company_desc)
select  fn_hmrc_companies_cd_nm(group_nm, 'code')  group_id,        
GROUP_NM        
from hmrc_loader.PERSON_WELLNESSCORP_raw@hmr2_oracle
where trunc(create_dt) = trunc(sysdate)
minus
select company_cd, company_desc from all_company_codes; */



insert into PERSON_WELLNESSCORP_raw
(
GROUP_ID        ,
GROUP_NM        , 
CLIENT_ID      ,
UNIQUE_ID       ,
LAST_NM         ,
FIRST_NM        ,
BIRTH_DT       ,       
GENDER_CD      ,
GROUP_CD        ,
CREATE_DT      ,        
CREATED_BY     , 
UPDATE_DT       ,        
UPDATED_BY        
)
select   
 fn_hmrc_companies_cd_nm(group_nm, 'WC')  group_id,        
GROUP_NM        , 
CLIENT_ID      ,
UNIQUE_ID       ,
LAST_NM         ,
FIRST_NM        ,
BIRTH_DT       ,       
GENDER_CD      ,
GROUP_CD        ,
CREATE_DT      ,        
CREATED_BY     , 
UPDATE_DT       ,        
UPDATED_BY        
from hmrc_loader.PERSON_WELLNESSCORP_raw@hmr2_oracle
where trunc(create_dt) = trunc(sysdate);


--- now insert differences 
---

insert into hmrc_company_codes
(company_cd, company_desc, client_cd)
select group_id, group_nm, 'WC'
from PERSON_WELLNESSCORP_raw
where trunc(create_dt) = trunc(sysdate)  and client_id = 'WC'
minus
select company_cd, company_desc, client_cd
from hmrc_company_codes where client_cd = 'WC';

commit;

set heading off
set linesize 300
set echo off
set feedback off
select '''' || company_cd || '''' , '''' || company_desc || ''''  from hmrc_company_codes
where trunc(create_dt) = trunc(sysdate) and client_cd = 'WC';
spool C:\Automated_DataLoad_Jobs\Test\wellsolucorp\newcodes.out
/


spool off

commit;

exit;