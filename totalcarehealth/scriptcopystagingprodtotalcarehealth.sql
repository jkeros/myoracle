insert into person_total_care_health_raw
(
last_nm        ,
first_nm      , 
employee_id       ,
birth_dt          ,
state_cd            ,
location_cd            ,
company_cd        ,
relation_cd     ,
CREATE_DT           ,        
CREATED_BY          ,
UPDATE_DT           ,        
UPDATED_BY      
)
select   
last_nm        ,
first_nm      , 
employee_id       ,
birth_dt          ,
state_cd            ,
location_cd            ,
company_cd        ,
relation_cd     ,
CREATE_DT           ,        
CREATED_BY          ,
UPDATE_DT           ,        
UPDATED_BY         
from hmrc_loader.person_total_care_health_raw@hmr2_oracle
where trunc(create_dt) = trunc(sysdate);

commit;

exit;






