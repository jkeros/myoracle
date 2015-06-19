OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "Oakwood HRA Eligibility 06-07-2013.csv"
BADFILE "Oakwood HRA Eligibility 06-07-2013.bad"
DISCARDFILE "Oakwood HRA Eligibility 06-07-2013.dsc"
append
INTO TABLE person_oakwood_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
ID		"lpad(:ID,6,'0')",
Empl_Rcd		"trim(:Empl_Rcd)",
Emp_suffix		"trim(:Emp_suffix)",
Emp_Last_Name		"trim(:Emp_Last_Name)",
Emp_First_Name		"trim(:Emp_First_Name)",
Emp_prefix		"trim(:Emp_prefix)",
Emp_Sex		"substr(:Emp_Sex,1,1)",
Reg_Temp		"trim(:Reg_Temp)",
Full_Part		"trim(:Full_Part)",
BOD		date "mm/dd/yyyy",
Service_Date		date "mm/dd/yyyy",
Ben_Progrm		"trim(:Ben_Progrm)",
Address1		"trim(:Address1)",
Address2		"trim(:Address2)",
City		"trim(:City)",
State		"trim(:State)",
Postal		"trim(:Postal)",
Country		"trim(:Country)",
Union_Code		"trim(:Union_Code)",
Covrg_Code		"trim(:Covrg_Code)",
unit		"trim(:unit)",
Spouse_Prefix		"trim(:Spouse_Prefix)",
Spouse_Last_Name		"trim(:Spouse_Last_Name)",
Spouse_First_Name		"trim(:Spouse_First_Name)",
Spouse_Suffix		"trim(:Spouse_Suffix)",
Relationship		"trim(:Relationship)",
Spouse_Sex		"substr(:Spouse_Sex,1,1)",
Spouse_Birthdate		date 'mm/dd/yyyy'
)