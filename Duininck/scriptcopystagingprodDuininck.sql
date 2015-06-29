insert into PERSON_OAKWOOD_raw
(ID            ,        
LAST_NAME      ,      
FIRST_NAME     ,      
GL_UNIT        ,      
REG_TEMP       ,      
FULL_PART      ,      
BEN_PROGRM     ,      
SEX            ,     
BIRTHDATE      ,      
SERVICE_DATE   ,     
EMPL_RCD       ,      
UNION_CODE,webhra_id,relation_code,location,location_name,
create_dt  ,
created_by   ,
update_dt    ,
updated_by   )      
select 
ID                ,       
EMP_LAST_NAME     ,       
EMP_FIRST_NAME    ,       
UNIT              ,       
REG_TEMP          ,       
FULL_PART         ,       
BEN_PROGRM        ,       
EMP_SEX           ,       
BOD               ,       
SERVICE_DATE      ,       
EMPL_RCD          ,       
UNION_CODE,id, 'EE',LOCATION_CODE,LOCATION_DESC ,
create_dt  ,
created_by   ,
update_dt    ,
updated_by
from hmrc_loader.PERSON_OAKWOOD_raw@hmr2_oracle;


insert into PERSON_OAKWOOD_raw
(ID            ,        
LAST_NAME      ,      
FIRST_NAME     ,      
GL_UNIT        ,      
REG_TEMP       ,      
FULL_PART      ,      
BEN_PROGRM     ,      
SEX            ,     
BIRTHDATE      ,      
SERVICE_DATE   ,     
EMPL_RCD       ,      
UNION_CODE,webhra_id,relation_code,location,location_name,
create_dt  ,
created_by   ,
update_dt    ,
updated_by   )      
select 
ID                     ,
SPOUSE_LAST_NAME       , 
SPOUSE_FIRST_NAME      , 
UNIT                   , 
REG_TEMP               , 
FULL_PART              , 
BEN_PROGRM             , 
SPOUSE_SEX             , 
SPOUSE_BIRTHDATE       , 
SERVICE_DATE           , 
EMPL_RCD               , 
UNION_CODE,ID||'SP','SP',LOCATION_CODE,LOCATION_DESC,
create_dt  ,
created_by   ,
update_dt    ,
updated_by
from hmrc_loader.PERSON_OAKWOOD_raw@hmr2_oracle where SPOUSE_LAST_NAME is not null;
;
commit;




exit;






