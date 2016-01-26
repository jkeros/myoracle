OPTIONS
(
SKIP=1
)
LOAD DATA
INFILE "FF_Sandia_1155705_Eligibility_20140227A.csv"
BADFILE "FF_Sandia_1155705_Eligibility_20140227A.bad"
DISCARDFILE "FF_Sandia_1155705_Eligibility_20140227A.dsc"
append
INTO TABLE person_sandia_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
vhm_seq_id "trim(:vhm_seq_id)",
SponsorID	"trim(:SponsorID)",
SNLID "trim(:SNLID)",
FirstName "trim(:FirstName)",
LastName "trim(:LastName)",
RelationCode "trim(:RelationCode)",
Gender "trim(:Gender)",
Last4SSN "trim(:Last4SSN)",
DOB date 'yyyymmdd',
Center "trim(:Center)",
Location "trim(:Location)",
Represented "trim(:Represented)",
JobLevel "trim(:JobLevel)",
JobFamily "trim(:JobFamily)",
Education "trim(:Education)",
HealthPlan "trim(:HealthPlan)",
WorkEmail "trim(:WorkEmail)",
HeightDate date 'yyyymmdd',
HeightFeet,
HeightInches,
WeightDate date 'yyyymmdd',
Weight,
BMIdate date 'yyyymmdd',
BMI,
WaistDate date 'yyyymmdd',
Waist,
BPDate date 'yyyymmdd',
sbp,
dbp,
GlucoseDate date 'yyyymmdd',
FastGlucose,
CholesterolDate date 'yyyymmdd',
Cholesterol,
HDLDate date 'yyyymmdd',
HDL,
LDLDate date 'yyyymmdd',
LDL,
TriglyceridesDate  date 'yyyymmdd',
Triglycerides,
A1cDate date 'yyyymmdd',
HbA1c,
BodyFatDate date 'yyyymmdd',
BodyFat,
ILLHours,
Incident "trim(:Incident)",
IncidentCause "trim(:IncidentCause)",
DMC "trim(:DMC)",
full_emp_ssn	"trim(:full_emp_ssn)",
division	nullif division="NULL" "trim(:division)" 
)
 
