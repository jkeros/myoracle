insert into person_bellevuehosp_raw
(
SSN                   ,
EEID                  ,
COMPANY               ,
LAST_NAME             ,
FIRST_NAME            ,
DOB                   ,
GENDER                ,      
RELATIONSHIP          ,
ADDRESS               ,
CITY                  ,
STATE                 ,
ZIP                   ,
DEPT                  ,
create_dt             , 
created_by	,
update_dt, 
updated_by   
)
select   
SSN                   ,
EEID                  ,
COMPANY               ,
LAST_NAME             ,
FIRST_NAME            ,
DOB                   ,
GENDER                ,      
RELATIONSHIP          ,
ADDRESS               ,
CITY                  ,
STATE                 ,
ZIP                   ,
DEPT                  ,
create_dt             , 
created_by	,
update_dt, 
updated_by   
from hmrc_loader.person_bellevuehosp_raw@hmr2_oracle
where trunc(create_dt) = trunc(sysdate);

commit;

exit;






