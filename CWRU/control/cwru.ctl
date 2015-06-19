LOAD DATA
INFILE "CWRU HRA ee census UPDATE 20140911.csv" 
BADFILE "CWRU HRA ee census UPDATE 20140911.bad"
DISCARDFILE "CWRU HRA ee census UPDATE 20140911.dsc"
append
INTO TABLE person_cwru_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS	
(
User_name	"trim(:User_name)",
Last	"trim(:Last)",
First_Name	"trim(:First_Name)",
ID	"trim(:ID)",
Sex	"trim(:Sex)",
Birthdate	date 'mm/dd/yyyy',
School	"trim(:School)",
School_Short	"trim(:School_Short)",
Faculty_Staff	"trim(:Faculty_Staff)",
Medical_Coverage_Election	nullif Medical_Coverage_Election='n/a' "trim(:Medical_Coverage_Election)",
Medical_Plan	nullif Medical_Plan='n/a' "trim(:Medical_Plan)"             
)
