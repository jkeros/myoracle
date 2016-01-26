insert into  bio_2011_for_paper_hra_raw    
 select id unique_id, 
 null bio_serial , 
 company_cd company_id,   
last_nm last_nm,   
 first_nm first_nm,   
'CBTHWF' group_id,  
 relation_cd relationship_cd ,
gender_ind gender_ind, 
null  birth_dt,    
null birth_year ,   
height_feet_val height_feet,  
 height_inches_val HEIGHT_INCHES, 
 WEIGHT_val weight, 
 WAIST_CIRC_val waist_circumference, 
 SBP_val  sbp, 
 DBP_val dbp, 
 null pulse, 
 NONFAST_GLUCOSE_val nonfast_glucose, 
 FAST_GLUCOSE_val FAST_GLUCOSE, 
 CHOLESTEROL_val CHOLESTEROL , 
 HDL_val hdl, 
 LDL_val ldl, 
null triglycerides, 
  BODY_FAT_val BODYFAT, 
 PSA_val PSA, 
 HBA1C_val  HBA1C, 
 bio_date_val BIO_Dt, 
 sysdate receive_dt,  
 null hra_serial,  
id ssn_id, 
sysdate create_Dt,  
user create_user, 
sysdate update_dt,  
user update_user 
  from hmrc_loader.bio_2011_for_paper_hra_raw@hmr2_oracle  where trunc(create_dt) = trunc(sysdate);
commit;
exit;






