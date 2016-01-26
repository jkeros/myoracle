OPTIONS (skip=1, SILENT=all)
LOAD DATA
BADFILE 'per_bad.txt'
DISCARDFILE 'per_dsc.txt'
append into TABLE PERSONNEL_update_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
ee_id                 ,
SSN4_id "lpad(:SSN4_id,4,'0')",
SSN_id  "lpad(:SSN_id,9,'0')",
last_nm                  ,
first_nm                  ,
middle_nm                    ,
dob_dt	date "mm/dd/yyyy",                    
cur_doh_dt date "mm/dd/yyyy",                    
CLASS_CD                  ,
CLASS_DESC             ,
PLAN_CD                   ,
work_status_ind                  ,
COVERAGE_CD               ,
EFF_DT  date "mm/dd/yyyy",
ANNL_PREMIUM_amt           ,
ANNL_EE_CONTRIB_amt        ,
GENDER_ind                 ,
CAMPUS_cd                 ,
ORG_Cd               ,
ORG_DESC
)
