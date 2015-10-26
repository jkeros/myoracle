insert into person_texashealth_raw
(
EMPLOYER           ,
SUB_EMPLOYER       ,
DIVISION           ,
PERSON_ID          ,
FIRST_NAME         ,
LAST_NAME          ,
GENDER             ,
RELATION_CODE      ,
BIRTH_DATE         ,       
GROUP_CODE         ,
CREATE_DT         ,         
CREATED_BY         ,
UPDATE_DT         ,         
UPDATED_BY  ,
employer_cd            
)
select   
EMPLOYER           ,
SUB_EMPLOYER       ,
DIVISION           ,
PERSON_ID          ,
FIRST_NAME         ,
LAST_NAME          ,
GENDER             ,
RELATION_CODE      ,
BIRTH_DATE         ,       
fn_hmrc_companies_cd_nm(sub_employer, 'TS')  GROUP_CODE         ,
CREATE_DT         ,         
CREATED_BY         ,
UPDATE_DT         ,         
UPDATED_BY   ,
fn_hmrc_companies_cd_nm(sub_employer, 'TS')         
from hmrc_loader.person_texashealth_raw@hmr2_oracle
where trunc(create_dt) = trunc(sysdate);



--- now insert differences 
---

insert into hmrc_company_codes
(company_cd, company_desc, client_cd)
select employer_cd, sub_employer, 'TS'
from person_texashealth_raw
where trunc(create_dt) = trunc(sysdate)
minus
select company_cd, company_desc, client_cd
from hmrc_company_codes;

commit;

set heading off
set linesize 300
set echo off
set feedback off
select '''' || company_cd || '''' , '''' || company_desc || ''''  from hmrc_company_codes
where trunc(create_dt) = trunc(sysdate);
spool C:\Automated_DataLoad_Jobs\Test\texashealth\newcodes.out
/


spool off

exit;






