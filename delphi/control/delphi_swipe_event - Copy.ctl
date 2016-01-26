OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "delphi_swipe_yyyymmdd.xlsx"
BADFILE "delphi_swipe.bad"
DISCARDFILE "delphi_swipe.dsc"
APPEND
INTO TABLE  delphi_event_swiped
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
SWIPE_MM_val	"trim(:SWIPE_MM_val)",
SWIPE_DD_val	"trim(:SWIPE_DD_val)",
SWIPE_YYYY_val	"trim(:SWIPE_YYYY_val)",
LAST_nm	"trim(:LAST_nm)",
FIRST_nm	"trim(:FIRST_nm)",
EMPLOYEE_DIN	"trim(:EMPLOYEE_DIN)",
gender_ind		"trim(:gender_ind)",
DOB_MM_val		"trim(:DOB_MM_val)",
DOB_DD_val		"trim(:DOB_DD_val)",
DOB_YYYY_val	"trim(:DOB_YYYY_val)",
SURVEY_TYPE_ind	"trim(:SURVEY_TYPE_ind)",
EVENT_ID	"trim(:EVENT_ID)",
BODY_FAT_val	"trim(:BODY_FAT_val)",
CHOLESTEROL_val	"trim(:CHOLESTEROL_val)",
HDL_val		"trim(:HDL_val)",
WAIST_CIRCUMFERENCE_val	"trim(:WAIST_CIRCUMFERENCE_val)",
SBP_val		"trim(:SBP_val)",
DBP_val		"trim(:DBP_val)",
WEIGHT_val		"trim(:WEIGHT_val)"
)
