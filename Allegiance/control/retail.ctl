options   (skip=1)
load data
infile 'New hires 11.8.13.csv'
badfile 'New hires 11.8.13.bad'
discardfile 'New hires 11.8.13.dsc'
append
into table hmrc_personnel
fields terminated by ',' optionally enclosed by '"'
trailing nullcols
(
IYL_YEAR		"trim(:IYL_YEAR)",
company_id "trim(:COMPANY_ID)",
ID      	"trim(ltrim(:ID,'0'))",
MEMBER_TYPE	"trim(:MEMBER_TYPE)",
FIRST_NAME	"trim(:FIRST_NAME)",
MIDDLE_NAME	"trim(:MIDDLE_NAME)",
LAST_NAME	"trim(:LAST_NAME)",
DOB	date	'fmmm/dd/yyyy' "trim(:DOB)",
DEPARTMENT	"trim(:DEPARTMENT)",
GENDER		"trim(:GENDER)",
ADDRESS1	"trim(:ADDRESS1)",
ADDRESS2	"trim(:ADDRESS2)",
CITY		"trim(:CITY)",
STATE		"trim(:STATE)",
ZIP_CODE		"trim(:ZIP_CODE)",
date_added       "sysdate"
)
