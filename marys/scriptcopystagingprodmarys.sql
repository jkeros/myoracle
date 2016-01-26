declare 

vsemp varchar2(100);
cursor stm_c is 
select distinct nvl(sub_employer, employer) emp
from hmrc_loader.person_stmarys_raw@hmr2_oracle where trunc(create_dt) = trunc(sysdate);

begin

if stm_c%isopen then close stm_c;

end if;

open stm_c;
loop
fetch stm_c into vsemp;
exit when stm_c%notfound;




insert into  person_stmarys_raw (
employer, 
sub_employer,
ID_NUMBER           ,
LAST_NAME           ,
FIRST_NAME          ,
EMAIL_ADDRESS       ,
CONTACT_NUMBER      ,
BIRTH_DATE         ,         
GENDER              ,
RELATIONSHIP        ,
LOCATION            ,
GROUP_CODE          ,
update_dt          ,
updated_by          ,
create_dt          , 
created_by               
    )
select 
employer, 
sub_employer,
ID_NUMBER           ,
LAST_NAME           ,
FIRST_NAME          ,
EMAIL_ADDRESS       ,
CONTACT_NUMBER      ,
BIRTH_DATE         ,         
GENDER              ,
RELATIONSHIP        ,
LOCATION            ,
fn_hmrc_companies_cd_nm(nvl(sub_employer, employer), 'SM')  GROUP_CODE          ,
update_dt          ,
updated_by          ,
create_dt          , 
created_by              
from hmrc_loader.person_stmarys_raw@hmr2_oracle where trunc(create_dt) = trunc(sysdate) and nvl(sub_employer, employer) = vsemp;


insert into hmrc_company_codes
(company_cd, company_desc, client_cd)
select group_code, nvl(sub_employer,employer), 'SM'
from person_stmarys_raw
where trunc(create_dt) = trunc(sysdate)
and nvl(sub_employer, employer) = vsemp
minus
select company_cd, company_desc, client_cd
from hmrc_company_codes where client_cd ='SM';

end loop;

close stm_c;
commit;



end;
/

set heading off
set linesize 300
set echo off
set feedback off
select '''' || company_cd || '''' , '''' || company_desc || ''''  from hmrc_company_codes
where trunc(create_dt) = trunc(sysdate);
spool C:\Automated_DataLoad_Jobs\Test\marys\newcodes.out
/


spool off


exit;






