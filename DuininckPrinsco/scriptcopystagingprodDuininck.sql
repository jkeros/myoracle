delete from person_acbg 
where company_code='DUININCK' 
     and branch='DBIPRA';



insert into PERSON_acbg (ssn,
ee_ssn,
  last_name,
  first_name,
  RELATION,
  GENDER,
  BIRTH_DATE,
  company_code,
  branch)
select 
  ssn,
  ssn,
  upper(last_name),
  upper(first_name),
  'EE' RELATION,
  substr(GENDER,1,1),
  BIRTH_DATE,
  'DUININCK' company_code,
  'DBIPRA' branch
  FROM  hmrc_loader.duininck_pra_elig_raw@hmr2_oracle e
where trunc(create_dt) = trunc(sysdate)
/


commit;




exit;






