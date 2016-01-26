insert into per_borgess_raw
(
company_cd         ,
COMPANY_DESC        , 
DEPARTMENT_ID       ,
DEPT_CD             ,
EMP_ID              ,
NAME_TXT            ,
JOB_CD              ,
JOB_TITLE_DESC      ,
HIRE_DT             ,         
FULL_PART_IND       ,
ACTION_IND          ,
ADDRESS_1_TXT       ,
ADDRESS_2_TXT       ,
CITY_TXT            ,
STATE_CD            ,
POSTAL_CD           ,
PHONE               ,
GENDER_IND          ,
CLIENT_ID           ,
LAST_NM             ,
FIRST_NM            ,
DOB_DT              ,         
WORK_EMAIL_CD       ,
CREATE_DT           ,        
CREATED_BY          ,
UPDATE_DT           ,        
UPDATEED_BY      
)
select   
case when length(company_desc) <= 4 then substr(company_desc, 1, 3) else fn_hmrc_companies_cd_nm(company_desc, 'BG') end  company_cd         ,
case when length(company_desc) <= 4 then  fn_hmrc_companies_desc(substr(company_desc, 1,3), 'BG')  else company_desc end COMPANY_DESC        ,
DEPARTMENT_ID       ,
DEPT_CD             ,
EMP_ID              ,
NAME_TXT            ,
JOB_CD              ,
JOB_TITLE_DESC      ,
HIRE_DT             ,         
FULL_PART_IND       ,
ACTION_IND          ,
ADDRESS_1_TXT       ,
ADDRESS_2_TXT       ,
CITY_TXT            ,
STATE_CD            ,
POSTAL_CD           ,
PHONE               ,
GENDER_IND          ,
CLIENT_ID           ,
LAST_NM             ,
FIRST_NM            ,
DOB_DT              ,         
WORK_EMAIL_CD       ,
CREATE_DT           ,        
CREATED_BY          ,
UPDATE_DT           ,        
UPDATEED_BY         
from hmrc_loader.per_borgess_raw@hmr2_oracle
where trunc(create_dt) = trunc(sysdate);



insert into hmrc_company_codes
(company_cd, company_desc, client_cd)
select company_cd, company_desc, 'BG'
from per_borgess_raw
where trunc(create_dt) = trunc(sysdate) 
minus
select company_cd, company_desc, client_cd
from hmrc_company_codes where client_cd = 'BG';

commit;

set heading off
set linesize 300
set echo off
set feedback off
select '''' || company_cd || '''' , '''' || company_desc || ''''  from hmrc_company_codes
where trunc(create_dt) = trunc(sysdate) and client_cd = 'BG';
spool C:\Automated_DataLoad_Jobs\Test\borgess\newcodes.out
/


spool off


commit;

exit;






