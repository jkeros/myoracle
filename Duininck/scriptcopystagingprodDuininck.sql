delete from person_acbg 
where company_code='DUININCK' 
      and branch in ('DBICOA','DBICOA-NON','DBIMNA','DBIMNA-NON');



insert into PERSON_acbg (
SSN                 ,
AMI                 ,
EE_SSN              ,
DEPENDENT_SSN       ,
LAST_NAME           ,
FIRST_NAME          ,
MIDDLE              ,
RELATION            ,
GENDER              ,
BIRTH_DATE         ,
EFFECTIVE_DATE     ,
BRANCH              ,
PCL_END_DATE       ,
COMPANY_CODE        )
SELECT
    CASE
      WHEN e.dependent_ssn IS NOT NULL
      THEN e.dependent_ssn
      ELSE e.ssn
    END ssn,
    null AMI,
    e.ssn ee_ssn,
    CASE
      WHEN e.dependent_ssn IS NOT NULL
      THEN e.dependent_ssn
      ELSE e.ssn
    END dependent_ssn,
    upper(e.last_name) last_name,
    upper(e.first_name) first_name,
    e.middle,
    e.relation,
    e.gender,
    e.birth_date,
    e.effective_date,
    e.branch,
    e.CANCEL_DATE pcl_end_date,
    'DUININCK' company_code
  FROM  hmrc_loader.duininck_elig_raw@hmr2_oracle e
where trunc(create_dt) = trunc(sysdate)
/


commit;




exit;






