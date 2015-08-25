
insert into person_safeauto_raw
(
WORK_LOCATION         ,
BENEFIT_PLAN_FLAG     ,
SSN                   ,
EMPLID                ,
LAST_NAME             ,
FIRST_NAME            ,
MID_NAME              ,
ADDRESS1              ,
ADDRESS2              ,
CITY                  ,
STATE                 ,
ZIP                   ,
BIRTH_DATE            ,
GENDER                ,
HOME_PHONE            ,
EMAIL                 ,
FOREIGN_LANG          ,
SPANISH_VERSION       ,
RELATION_CODE         
)
select 
SITE_CODE             ,
BENEFIT_PLAN          ,
SSN_OR_MEMBER_ID      ,
EMPLOYEE_ID           ,
LASTNAME              ,
FIRSTNAME             ,
MI                    ,
ADDRESS1              ,
ADD2                  ,
CITY                  ,
STATE                 ,
ZIP                   ,
DOB                  ,
GENDER                ,
HOMEPHONE             ,
EMAIL                 ,
FOREIGN_LANGUAGE      ,
SPANISH_VERSION       ,
EMPLOYEE_SPOUSE  
from     
hmrc_loader.person_safeauto_raw@hmr2_oracle where trunc(sysdate) = trunc(create_dt) ; 


exit;






