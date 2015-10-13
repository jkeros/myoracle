OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "Sept 10-15-14.csv"
BADFILE "totalhealthcare.bad"
DISCARDFILE "totalhealthcare.dsc"
append
INTO TABLE person_total_care_health_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
last_nm "TRIM(:last_nm)",
first_nm "TRIM(:first_nm)",	
employee_id "TRIM(:employee_id)",
gender_cd "TRIM(:gender_cd)",
birth_dt "decode(trim(lower(:birth_dt)), 'need', null, to_date(:birth_dt,  'mm/dd/yyyy'))",
state_cd "TRIM(:state_cd)",
location_cd "TRIM(:location_cd)",
company_cd "TRIM(:company_cd)",
relation_cd "TRIM(:relation_cd)"
)