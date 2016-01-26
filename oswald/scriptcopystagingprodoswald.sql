insert into oswald_raw
(
STATUS               ,
DEPARTMENT           ,
ORGANIZATION_NM      ,
ORGANIZATION_CD      ,
FIRST_NM             ,
LAST_NM              ,
UNIQUE_ID            ,
RELATIONSHIP_CD      ,
DOB_DT              ,
GENDER_CD            ,
HRA_OPEN_DT         ,
HRA_CLOSE_DT        ,
CREATE_DT           ,
CREATED_BY           ,
UPDATE_DT           ,
UPDATE_BY            ,
LOCATION_CD          )
select 
STATUS               ,
DEPARTMENT           ,
ORGANIZATION_NM      ,
ORGANIZATION_CD      ,
FIRST_NM             ,
LAST_NM              ,
UNIQUE_ID            ,
RELATIONSHIP_CD      ,
DOB_DT              ,
GENDER_CD            ,
HRA_OPEN_DT         ,
HRA_CLOSE_DT        ,
CREATE_DT           ,
CREATED_BY           ,
UPDATE_DT           ,
UPDATE_BY            ,
LOCATION_CD          
from hmrc_loader.oswald_raw@hmr2_oracle
where trunc(sysdate) = trunc(update_dt);

exit;






