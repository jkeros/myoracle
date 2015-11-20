OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "RDU 2016 Identifier List.csv"
BADFILE "RDU 2016 Identifier List.bad"
DISCARDFILE "RDU 2016 Identifier List.dsc"
TRUNCATE
INTO TABLE person_ilwm_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
person_id "TRIM(:person_id)",
Last_Name "TRIM(:Last_Name)",	
First_Name "TRIM(:First_Name)"
)