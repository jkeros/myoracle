
COPY FROM julieker[hmrc_loader]/hmrc$$julie1015@dware_oracle - 
append  personnel_update_raw -  
using select * from personnel_update_raw  where trunc(create_dt) = trunc(sysdate) ;
exit;






