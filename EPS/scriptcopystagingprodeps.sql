insert into  eps_raw 
(
EMP_ID          , 
FIRST_nm      , 
LAST_nm       , 
addr_txt            , 
CITy_txt           , 
ST_cd              ,  
ZIP_cd              , 
DOB_dt             ,      
GENDER_cd          ,  
CLASS_cd            ,
create_dt          , 
created_by         , 
update_dt          , 
update_by  
) 
 select 
EMP_ID          , 
FIRST_nm      , 
LAST_nm       , 
addr_txt            , 
CITy_txt           , 
ST_cd              ,  
ZIP_cd              , 
DOB_dt             ,      
GENDER_cd          ,  
CLASS_cd            ,
create_dt          , 
created_by         , 
update_dt          , 
update_by  
  from hmrc_loader.eps_raw@hmr2_oracle  where trunc(create_dt) = trunc(sysdate);
commit;

exit;






