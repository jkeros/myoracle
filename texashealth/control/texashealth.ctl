OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "Texas Health Eligibility File - Azle ISD - Azle Elementary.csv"
BADFILE "Texas Health Eligibility File - Azle ISD - Azle Elementary.bad"
DISCARDFILE "Texas Health Eligibility File - Azle ISD - Azle Elementary.dsc"
append
INTO TABLE person_texashealth_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
EMPLOYER			"trim(:EMPLOYER)",
SUB_EMPLOYER		"trim(:SUB_EMPLOYER)",
DIVISION			"trim(:DIVISION)",
PERSON_ID					"trim(:PERSON_ID)",
FIRST_NAME			"trim(:FIRST_NAME)",
LAST_NAME			"trim(:LAST_NAME)",
GENDER				"substr(:GENDER,1,1)",
RELATION_CODE		"trim(:RELATION_CODE)",
BIRTH_DATE		date 'mm/dd/yyyy'
)



