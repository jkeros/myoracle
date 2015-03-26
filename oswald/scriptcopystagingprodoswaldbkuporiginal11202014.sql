
COPY FROM julieker[hmrc_loader]/hmrc$$julie1015@dware_oracle - 
append person_oswald_companies -  
using select organization_nm company_name, organization_cd company_code, first_nm first_name, last_nm last_name, unique_id, relationship_cd relationship, dob_dt birth_date, gender_cd gender, hra_open_dt hra_open_date, organization_cd group_code, - 
upper(organization_cd ||trim(leading '0' from unique_id)) webhra_id -
 from oswald_raw where trunc(create_dt) = trunc(sysdate) ;

exit;






