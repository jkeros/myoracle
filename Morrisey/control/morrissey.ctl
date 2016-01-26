OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "morrisey.csv"
BADFILE "morrisey.bad"
DISCARDFILE "morrisey.dsc"
append
INTO TABLE MORRISSEY_RAW
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
HBG_Group_ID "TRIM(:HBG_Group_ID)",	
HBG_nm "TRIM(:HBG_Nm)",
HBG_Division_cd "TRIM(:HBG_Division_cd)",	
HBG_Unique_ID "TRIM(:HBG_Unique_ID)",	
Last_nm "TRIM(:Last_nm)",	
First_nm "TRIM(:First_nm)",	
gender_cd "substr(:gender_cd,1,1)",	
dob_dt date 'MM/DD/YYYY',
group_size_cd "TRIM(:group_size_cd)",
relationship_cd "SUBSTR(:relationship_cd,1,1)",
email_txt "TRIM(:email_txt)"
)