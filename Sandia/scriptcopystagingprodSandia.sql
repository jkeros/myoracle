insert into  PERSON_SANDIA_RAW
(
PERSON_ID          ,
VHM_SEQ_ID         ,
SNLID              ,
FIRST_NAME         ,
LAST_NAME          ,
ELIGIBLE_DATE     ,
RELATION_CODE      ,
GENDER             ,
LAST4SSN           ,
BIRTH_DATE        ,
CENTER             ,
LOCATION           ,
REPRESENTED        ,
JOB_LEVEL          ,
JOB_FAMILY         ,
EDUCATION          ,
HEALTH_PLAN        ,
WORK_EMAIL         ,
DMC                ,
EMP_SSN            ,
DIVISION        
) 
 select distinct
regexp_replace(upper(lastname), '[^[:alnum:]]', '')||lpad(last4ssn,4,'0')||to_char(dob,'yyyymm') person_id,
 VHM_SEQ_ID,
 SNLID,
upper(FIRSTNAME),
upper(LASTNAME),
null ELIGIBLEDATE,
 RELATIONCODE,
 GENDER,
lpad(LAST4SSN,4,'0'),
 DOB,
 CENTER,
 LOCATION,
 REPRESENTED,
 JOBLEVEL,
 JOBFAMILY,
 EDUCATION,
 HEALTHPLAN,
 WORKEMAIL,dmc,lpad(FULL_EMP_SSN,9,'0'),DIVISION      
  from hmrc_loader.PERSON_SANDIA_RAW@hmr2_oracle  where trunc(create_dt) = trunc(sysdate) and length(snlid)<9;
commit;

exit;






