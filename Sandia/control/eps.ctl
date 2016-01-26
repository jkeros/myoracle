OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "EPS Eligibility File.csv"
BADFILE "EPS Eligibility file.bad"
DISCARDFILE "EPS Eligibility File.dsc"
append
INTO TABLE eps_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
Emp_ID		"trim(:Emp_ID)",
First_nm		"trim(:First_nm)",
Last_nm		"trim(:Last_nm)",
addr_txt		"trim(:addr_txt)",
city_txt		"trim(:city_txt)",
st_cd		"trim(:st_cd)",
ZIP_CD		"trim(:ZIP_CD)",
dob_dt		date 'mm/dd/yyyy',
gender_cd		"trim(:gender_cd)",
class_cd		"trim(:class_cd)"
)
