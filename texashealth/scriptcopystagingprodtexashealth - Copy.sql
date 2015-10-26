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
UPDATED_BY             
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
GROUP_CODE         ,
CREATE_DT         ,         
CREATED_BY         ,
UPDATE_DT         ,         
UPDATED_BY               
from hmrc_loader.person_texashealth_raw@hmr2_oracle
where trunc(create_dt) = trunc(sysdate);

commit;

exit;






