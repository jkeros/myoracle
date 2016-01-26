OPTIONS (skip=1)
LOAD DATA
BADFILE 'cbt_bad.txt'
DISCARDFILE 'cbt_dsc.txt'
append into TABLE bio_2011_for_paper_hra_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
ID                ,
first_nm                 ,
last_nm                 ,
company_cd                  ,
location_txt, 
relation_cd, 
gender_ind, 
dob_dt	date "mm/dd/yyyy",                    
bio_date_val date "mm/dd/yyyy", 
height_feet_val , 
height_inches_val , 
weight_val , 
waist_circ_val, 
 sbp_val, 
dbp_val, 
 CHOLESTEROL_val,
 FAST_GLUCOSE_val,
 NONFAST_GLUCOSE_val,
 hdl_val, 
 ldl_val, 
 BODY_FAT_val,
 PSA_val ,
 HBA1C_val  ,
 address1 , 
 address2, 
 address3, 
 city, 
 state, 
 zip
)
