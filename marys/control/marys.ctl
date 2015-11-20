OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "stmarys 2016 Identifier List.csv"
BADFILE "stmarys 2016 Identifier List.bad"
DISCARDFILE "stmarys 2016 Identifier List.dsc"
append
INTO TABLE person_stmarys_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
id_number "TRIM(:id_number)",
relationship "TRIM(:relationship)",
first_name "TRIM(:first_name)",
Last_Name "TRIM(:Last_Name)",
birth_date DATE 'fmmm/dd/yyyy',
gender "TRIM(:gender)",
group_code "'2S'"
)