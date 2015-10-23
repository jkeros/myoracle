insert into  hraweb.bio_2011_for_paper_hra_raw     
 select id unique_id, 
 null bio_serial , 
 '1039W' company_id,   
last_nm last_nm,   
 first_nm first_nm,   
'CBTHWF' group_id,  
 relation_cd relationship_cd ,
decode(substr(upper(GENDER_ind),1,1),'M',1,'1',1,'F',2,'2',2) gender_ind, 
case when DOB_dt is not null then to_date('19'||to_char(dob_dt,'yymmdd'),'yyyymmdd') end  birth_dt,    
case when DOB_dt is not null then '19'||to_char(DOB_dt,'yy') end birth_year ,   
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
user update_user ,
address1 , 
 address2, 
 address3,
 city, 
state, 
zip
  from hmrc_loader.bio_2011_for_paper_hra_raw @hmr2_oracle  where trunc(create_dt) = trunc(sysdate);
commit;
exit;






