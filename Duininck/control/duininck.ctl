OPTIONS
(
SKIP=7
)
LOAD DATA
INFILE "HRA eligibility full list sent 5.29.15.csv"
BADFILE "Duininck HRA eligibility.bad"
DISCARDFILE "Duininck HRA eligibility.dsc"
append
INTO TABLE DUININCK_ELIG_RAW
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
AMI	"trim(:AMI)",
SSN	"lpad(trim(:SSN),9,0)",
Dependent_SSN	"lpad(trim(:Dependent_SSN),9,0)",
EXTENSION	"trim(:EXTENSION)",
Tier	"trim(:Tier)",
LAST_NAME	"trim(:LAST_NAME)",
First_Name	"trim(:First_Name)",
Middle	"trim(:Middle)",
Relation	"trim(:Relation)",
Gender	"trim(:Gender)",
Birth_Date	date 'mm/dd/yyyy',
Effective_Date	date 'mm/dd/yyyy',
Cancel_Date	date 'mm/dd/yyyy',
Branch	"trim(:Branch)",
Benefit	"trim(:Benefit)",
Network	"trim(:Network)",
Home_Guest	"trim(:Home_Guest)"                                         
)
