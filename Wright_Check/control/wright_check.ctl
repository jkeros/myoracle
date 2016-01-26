OPTIONS
(
SKIP=1
)
LOAD DATA
BADFILE 'C:\Automated_DataLoad_Jobs\Test\Wright_Check\log\wright_check.bad'
DISCARDFILE 'WCWS_HRA_Eligibility_File_8-26-14.dsc'
append
INTO TABLE person_wrightcheck_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
company_cd		"trim(:company_cd)",
department_cd	"trim(:department_cd)",
location_cd		"trim(:location_cd)",
id		"trim(:id)",
first_nm		"trim(:first_nm)",
last_nm		"trim(:last_nm)",
gender_ind		"trim(:gender_ind)",
relation_cd		"trim(:relation_cd)",
dob_dt		date 'mm/dd/yyyy' nullif dob_dt='1/0/1900'
)