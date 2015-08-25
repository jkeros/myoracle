OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "SafeAuto_HRA Eligibility File_Additions_20150813.csv"
BADFILE "SafeAuto_HRA Eligibility File_Additions_20150813.bad"
DISCARDFILE "SafeAuto_HRA Eligibility File_Additions_20150813.dsc"
append
INTO TABLE person_safeauto_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
SITE_CODE	"trim(:SITE_CODE)",
BENEFIT_PLAN	"trim(:BENEFIT_PLAN)",
SSN_OR_MEMBER_ID	"trim(replace(lower(replace(:SSN_OR_MEMBER_ID,'-','')), 'not recorded',''))",
EMPLOYEE_ID	"trim(:EMPLOYEE_ID)",
LASTNAME	"trim(:LASTNAME)",
FIRSTNAME	"trim(:FIRSTNAME)",
MI	"trim(:MI)",
ADDRESS1	"trim(:ADDRESS1)",
ADD2	"trim(:ADD2)",
CITY	"trim(:CITY)",
STATE	"trim(:STATE)",
ZIP	"trim(:ZIP)",
DOB		"fn_dob(:dob)",
GENDER	"trim(:GENDER)",
HOMEPHONE	"trim(:HOMEPHONE)",
EMAIL	"trim(:EMAIL)",
FOREIGN_LANGUAGE	"trim(:FOREIGN_LANGUAGE)",
SPANISH_VERSION	"trim(:SPANISH_VERSION)",
EMPLOYEE_SPOUSE	"trim(:EMPLOYEE_SPOUSE)"
)
