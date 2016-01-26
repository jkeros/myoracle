LOAD DATA
INFILE "37680_201505270818_Honeywell_elig_05272015.txt" 
BADFILE "37680_201505270818_Honeywell_elig_05272015.bad"
DISCARDFILE "37680_201505270818_Honeywell_elig_05272015.dsc"
TRUNCATE
INTO TABLE cigna_hw_elig
FIELDS TERMINATED BY '|' OPTIONALLY ENCLOSED BY '"'
(
Account_Name		"trim(:Account_Name)",
CIGNA_Account_Number		"trim(:CIGNA_Account_Number)",
Client_ID		"trim(:Client_ID)",
Contract_ID		"trim(:Contract_ID)",
Insured_Group_ID		"trim(:Insured_Group_ID)",
Insured_Group_Name		"trim(:Insured_Group_Name)",
AMI		"trim(:AMI)",
External_AMI		"trim(:External_AMI)",
Member_SSN		"trim(:Member_SSN)",
Member_SSN_Last_4_digits		"trim(:Member_SSN_Last_4_digits)",
Member_First_Name		"trim(:Member_First_Name)",
Member_Last_Name		"trim(:Member_Last_Name)",
Member_DOB		Date 'YYYYMMDD', 
Member_Gender		"trim(:Member_Gender)",
Relationship_Code		"trim(:Relationship_Code)",
Subscriber_SSN		"trim(:Subscriber_SSN)",
Member_Address_Line_1		"trim(:Member_Address_Line_1)",
Member_Address_Line_2		"trim(:Member_Address_Line_2)",
Member_City		"trim(:Member_City)",
Member_State		"trim(:Member_State)",
Member_Zip		"trim(:Member_Zip)",
Member_Email_Address		"trim(:Member_Email_Address)",
Member_Primary_Phone		"trim(:Member_Primary_Phone)",
Best_Number_to_Contact		"trim(:Best_Number_to_Contact)",
Eligibility_Effective_Date		Date 'YYYYMMDD', 
Eligibility_Term_Date		Date 'YYYYMMDD', 
Channel_Code		"trim(:Channel_Code)"
)	
