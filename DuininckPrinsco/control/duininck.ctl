OPTIONS
(
SKIP=1
--ERRORS=5000
)
LOAD DATA
INFILE 'HRA Upload 6 2 15.csv'
BADFILE 'princo_elig.bad'
DISCARDFILE 'princo_elig.dsc'
append
INTO TABLE DUININCK_PRA_ELIG_raw
FIELDS TERMINATED BY ',' optionally enclosed by '"'
TRAILING NULLCOLS
(
SSN		"RTRIM(replace(:SSN,'-',''))",
Last_Name	"RTRIM(:Last_Name)",
First_Name	"RTRIM(:First_Name)",
Gender		nullif Gender = 'Not Specified' "SUBSTR(:Gender,1,1)" ,
Birth_Date	date 'MM/DD/YYYY',	
Relation		"'EE'",
Effective_Date	date 'MM/DD/YYYY',
Branch		"'DBIPRA'"
)


