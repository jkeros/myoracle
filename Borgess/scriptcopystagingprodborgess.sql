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
case when length(company_desc) <= 4 then substr(company_desc, 1, 3) else fn_company_cd_nm(company_desc, 'code') end  company_cd         ,
case when length(company_desc) <= 4 then  fn_company_cd_nm(company_desc, 'name')  else company_desc end COMPANY_DESC        ,
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


commit;

exit;






