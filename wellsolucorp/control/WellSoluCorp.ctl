OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "VanguardEligUMich20141125.csv"
BADFILE "VanguardEligUMich20141125.bad"
DISCARDFILE "VanguardEligUMich20141125.dsc"
append
INTO TABLE PERSON_WELLNESSCORP_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
Group_ID "trim(:Group_ID)",
GROUP_NM   "trim(:GROUP_NM  )",
Unique_ID "replace(fn_remv_chr(:Unique_ID),'-','')",
LAST_NM "trim(fn_remv_chr(:LAST_NM))",
FIRST_NM "trim(fn_remv_chr(:FIRST_NM))",
GENDER_CD  "trim(:GENDER_CD)",
BIRTH_DT  date 'mm/dd/yyyy'
)


