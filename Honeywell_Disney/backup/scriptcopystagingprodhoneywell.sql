declare 

vddte varchar2(20);

begin


select  to_char(next_day(sysdate, 'WEDNESDAY') + 4, 'yyyymmdd') into vddte from dual;

execute immediate 'CREATE TABLE CIGNA_HW_ELIG_' || vddte || ' ' || 
  '(ACCOUNT_NAME VARCHAR2(100 BYTE),' ||  
	'CIGNA_ACCOUNT_NUMBER VARCHAR2(15 BYTE),' ||  
	'CLIENT_ID VARCHAR2(30 BYTE),' ||  
	'CONTRACT_ID VARCHAR2(30 BYTE),' ||  
	'INSURED_GROUP_ID VARCHAR2(15 BYTE),' ||  
	'INSURED_GROUP_NAME VARCHAR2(100 BYTE),' ||  
	'AMI VARCHAR2(30 BYTE),' ||  
	'EXTERNAL_AMI VARCHAR2(30 BYTE),' ||  
	'MEMBER_SSN VARCHAR2(9 BYTE),' ||  
	'MEMBER_SSN_LAST_4_DIGITS VARCHAR2(4 BYTE),' ||  
	'MEMBER_FIRST_NAME VARCHAR2(50 BYTE),' ||  
	'MEMBER_LAST_NAME VARCHAR2(50 BYTE),' ||  
	'MEMBER_DOB DATE,' ||  
	'MEMBER_GENDER VARCHAR2(10 BYTE),' ||  
	'RELATIONSHIP_CODE VARCHAR2(10 BYTE),' ||  
	'SUBSCRIBER_SSN VARCHAR2(9 BYTE),' ||  
	'MEMBER_ADDRESS_LINE_1 VARCHAR2(104 BYTE),' ||  
	'MEMBER_ADDRESS_LINE_2 VARCHAR2(100 BYTE),' ||  
	'MEMBER_CITY VARCHAR2(30 BYTE),' ||  
	'MEMBER_STATE VARCHAR2(2 BYTE),' ||  
	'MEMBER_ZIP VARCHAR2(20 BYTE),' ||  
	'MEMBER_EMAIL_ADDRESS VARCHAR2(100 BYTE),' ||  
	'MEMBER_PRIMARY_PHONE VARCHAR2(20 BYTE),' ||  
	'BEST_NUMBER_TO_CONTACT VARCHAR2(10 BYTE),' ||  
	'ELIGIBILITY_EFFECTIVE_DATE DATE,' ||  
	'ELIGIBILITY_TERM_DATE DATE,' ||  
	'CHANNEL_CODE VARCHAR2(10 BYTE)' || 
  ' )';

execute immediate 'insert into cigna_hw_elig_' || vddte || ' ' || ' select * from cigna_hw_elig ';
commit;

end;
/

exit;





