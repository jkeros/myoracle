OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "University Schools_ISBC_HRA Census_Additions_20140804.csv"
BADFILE "University Schools_ISBC_HRA Census_Additions_20140804.bad"
DISCARDFILE "University Schools_ISBC_HRA Census_Additions_20140804.dsc"
append
INTO TABLE  oswald_raw 
--when school_name = 'Hathaway Brown'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
--Status		"trim(:Status)",
--Department		"trim(:Department)",
ORGANIZATION_NM		"trim(:ORGANIZATION_NM)",
ORGANIZATION_CD 	"trim(:ORGANIZATION_CD )",
FIRST_nm		"trim(:FIRST_nm)",
LAST_nm		"trim(:LAST_nm)",
UNIQUE_ID		"replace(trim(:UNIQUE_ID),'-')",
RELATIONSHIP_cd		"trim(:RELATIONSHIP_cd)",
dob_dt		date 'mm/dd/yyyy',
gender_cd		"substr(:gender_cd,1,1)",
HRA_OPEN_DT 		date 'mm/dd/yyyy',
HRA_close_DT 		date 'mm/dd/yyyy'
)

                 
