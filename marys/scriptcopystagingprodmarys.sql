insert into  person_stmarys_raw (
ID_NUMBER           ,
LAST_NAME           ,
FIRST_NAME          ,
EMAIL_ADDRESS       ,
CONTACT_NUMBER      ,
BIRTH_DATE         ,         
GENDER              ,
RELATIONSHIP        ,
LOCATION            ,
GROUP_CODE          ,
update_dt          ,
updated_by          ,
create_dt          , 
created_by               
    )
select 
ID_NUMBER           ,
LAST_NAME           ,
FIRST_NAME          ,
EMAIL_ADDRESS       ,
CONTACT_NUMBER      ,
BIRTH_DATE         ,         
GENDER              ,
RELATIONSHIP        ,
LOCATION            ,
GROUP_CODE          ,
update_dt          ,
updated_by          ,
create_dt          , 
created_by              
from hmrc_loader.person_stmarys_raw@hmr2_oracle where trunc(create_dt) = trunc(sysdate);
exit;






