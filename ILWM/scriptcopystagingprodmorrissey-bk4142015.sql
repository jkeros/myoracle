
COPY FROM julieker[hmrc_loader]/hmrc$$julie1015@dware_oracle - 
append  PER_MORRISEY_raw -  
using select HBG_GROUP_ID  ,       - 
HBG_NM               ,  - 
HBG_DIVISION_CD     , - 
HBG_UNIQUE_ID       , - 
LAST_NM             , - 
FIRST_NM           , - 
GENDER_CD         , - 
DOB_DT             ,   -     
GROUP_SIZE_CD      , - 
RELATIONSHIP_CD      , - 
EMAIL_TXT    , - 
CREATE_DT           , -     
CREATED_BY         , - 
UPDATE_DT            , -         
UPDATED_BY      -
from   MORRISSEY_RAW       where trunc(create_dt) = trunc(sysdate) ;
exit;






