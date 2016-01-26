OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "Sept 10-15-14.csv"
BADFILE "Sept 10-15-14.bad"
DISCARDFILE "Sept 10-15-14.dsc"
append
INTO TABLE per_borgess_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
COMPANY_DESC "TRIM(:COMPANY_DESC)",
Emp_ID "TRIM(:Emp_ID)",	
last_nm "TRIM(:last_nm)",
first_nm "TRIM(:first_nm)",
middle_nm filler,
dob_dt date 'mm/dd/yyyy',
gender_ind "SUBSTR(:gender_ind,1,1)",
Address_1_txt "TRIM(:Address_1_txt)",
Address_2_txt "TRIM(:Address_2_txt)",
City_txt "TRIM(:City_txt)",
State_cd "TRIM(:State_cd)",
postal_cd "TRIM(REPLACE(:postal_cd,'-',''))",
Department_ID "TRIM(:Department_ID)",
Dept_cd "trim(:Dept_cd)",
Phone "TRIM(REPLACE(REPLACE(REPLACE(:Phone,' ',''),'/',''),'-',''))",
work_email_cd	"trim(:work_email_cd)"
)