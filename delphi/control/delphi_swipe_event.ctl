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
swipe_dt	date	'fmmm/dd/yyyy hh24:mi:ss' "trim(:swipe_dt)",
LAST_nm	"trim(:LAST_nm)",
FIRST_nm	"trim(:FIRST_nm)",
EMPLOYEE_DIN	"trim(:EMPLOYEE_DIN)",
gender_ind		"trim(:gender_ind)",
dob_dt	date	'fmmm/dd/yyyy hh24:mi:ss' "trim(:dob_dt)",
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
