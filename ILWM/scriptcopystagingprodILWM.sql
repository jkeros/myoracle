insert into  person_ilwm_raw (
PERSON_ID       ,
FIRST_NAME      ,
LAST_NAME       ,
RELATION        ,
GROUP_CODE      ,
GROUP_NAME      ,
WEBHRA_ID   ,
CREATE_DT      ,
CREATED_BY      ,
UPDATE_DT      ,
UPDATED_BY      
    )
select 
upper(person_id), first_name, last_name, 'Employee', 'RDU', 'RDU', upper(person_id), create_dt, created_by, create_dt, created_by
from hmrc_loader.person_ilwm_raw@hmr2_oracle where trunc(create_dt) = trunc(sysdate);
exit;






