
COPY FROM julieker[hmrc_loader]/hmrc$$julie1015@dware_oracle - 
append  person_wrightcheck_raw -  
using select COMPANY_CD         , - 
DEPARTMENT_CD      , - 
LOCATION_CD        , - 
ID                 , - 
FIRST_NM           , - 
LAST_NM            , - 
GENDER_IND         , - 
RELATION_CD        , - 
DOB_DT              , -         
CREATE_DT           , -         
CREATED_BY         , - 
update_DT           , -         
updated_BY          - 
from   person_wrightcheck_raw       where trunc(create_dt) = trunc(sysdate) ;
exit;






