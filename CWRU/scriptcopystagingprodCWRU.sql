insert into  PERSON_cwru_RAW
(
USER_NAME                      ,
LAST                           ,
FIRST_NAME                     ,
ID                             ,
SEX                            ,
BIRTHDATE                     ,
SCHOOL                         ,
SCHOOL_SHORT                   ,
FACULTY_STAFF                  ,
MEDICAL_COVERAGE_ELECTION      ,
MEDICAL_PLAN                   ,
create_dt    ,
created_by    ,
update_dt    ,
updated_by           
) 
 select 
USER_NAME                      ,
LAST                           ,
FIRST_NAME                     ,
ID                             ,
SEX                            ,
BIRTHDATE                     ,
SCHOOL                         ,
SCHOOL_SHORT                   ,
FACULTY_STAFF                  ,
MEDICAL_COVERAGE_ELECTION      ,
MEDICAL_PLAN                   ,
create_dt    ,
created_by    ,
update_dt    ,
updated_by         
  from hmrc_loader.PERSON_cwru_RAW@hmr2_oracle  where trunc(create_dt) = trunc(sysdate) ;
commit;




exit;






