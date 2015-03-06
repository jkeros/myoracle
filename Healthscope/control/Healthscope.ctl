LOAD DATA
INFILE "34147_201502261432_GHS_ELIG_HSCB_20150226.DAT"
BADFILE "34147_201502261432_GHS_ELIG_HSCB_20150226.bad"
DISCARDFILE "34147_201502261432_GHS_ELIG_HSCB_20150226.disc"
append
INTO TABLE person_granville_raw
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
Record_Definition_Type	POSITION(1:1)	"TRIM(:Record_Definition_Type)",
Record_Indicator	POSITION(2:2)	"TRIM(:Record_Indicator)",
Maintenance_Type_cd	POSITION(3:5)	"TRIM(:Maintenance_Type_cd)",
Maintenance_Reason_cd	POSITION(6:9)	"TRIM(:Maintenance_Reason_cd)",
Member_Unique_ID	POSITION(40:69)	"TRIM(:Member_Unique_ID)",
Member_SSN	POSITION(70:78)	"TRIM(:Member_SSN)",
Member_Last_nm	POSITION(79:118)	"TRIM(:Member_Last_nm)",
Member_First_nm	POSITION(119:158)	"TRIM(:Member_First_nm)",
Member_Middle_Initial	POSITION(159:159)	"TRIM(:Member_Middle_Initial)",
Member_Birth_dt	POSITION(160:169) date 'MM-DD-YYYY',
Member_Gender_cd	POSITION(170:173)	"TRIM(:Member_Gender_cd)",
Member_Marital_Status	POSITION(174:177)	"TRIM(:Member_Marital_Status)",
Member_Language_Indicator	POSITION(182:185)	"TRIM(:Member_Language_Indicator)",
Member_Expiration_dt	POSITION(186:195) date 'MM-DD-YYYY' NULLIF Member_Expiration_dt='          ',
Student_flg	POSITION(196:196)	"TRIM(:Student_flg)",
Handicap_flg	POSITION(197:197)	"TRIM(:Handicap_flg)",
Retired_flg	POSITION(198:198)	"TRIM(:Retired_flg)",
Member_EMail_Address	POSITION(199:278)	"TRIM(:Member_EMail_Address)",
Member_Street_1	POSITION(279:318)	"TRIM(:Member_Street_1)",
Member_Street_2	POSITION(319:358)	"TRIM(:Member_Street_2)",
Member_City	POSITION(359:388)	"TRIM(:Member_City)",
Member_State_cd	POSITION(389:390)	"TRIM(:Member_State_cd)",
Member_Zip_cd	POSITION(391:400)	"TRIM(:Member_Zip_cd)",
Member_Country_cd	POSITION(401:404)	"TRIM(:Member_Country_cd)",
Member_Home_Phone	POSITION(409:418)	NULLIF Member_Home_Phone='0000000000' "TRIM(:Member_Home_Phone)",
Member_Work_Phone	POSITION(419:428)	NULLIF Member_Work_Phone='0000000000' "TRIM(:Member_Work_Phone)",
Member_Effective_dt	POSITION(429:438) date 'MM-DD-YYYY',
Member_Termination_dt	POSITION(439:448) date 'MM-DD-YYYY' NULLIF Member_Termination_dt='          ',
Subscriber_Unique_ID	POSITION(449:478)	"TRIM(:Subscriber_Unique_ID)",
Subscriber_SSN_Number	POSITION(479:487)	"TRIM(:Subscriber_SSN_Number)",
Subscriber_Last_nm	POSITION(488:527)	"TRIM(:Subscriber_Last_nm)",
Subscriber_First_nm	POSITION(528:567)	"TRIM(:Subscriber_First_nm)",
Subscriber_Middle_Initial	POSITION(568:568)	"TRIM(:Subscriber_Middle_Initial)",
Subscriber_Birth_dt	POSITION(569:578) date 'MM-DD-YYYY',
Subscriber_Gender_cd	POSITION(579:582)	"TRIM(:Subscriber_Gender_cd)",
Member_Rel_to_Subscriber	POSITION(583:586)	"TRIM(:Member_Rel_to_Subscriber)",
Employer_ID	POSITION(587:616)	"TRIM(:Employer_ID)",
Employer_Grouping_ID	POSITION(617:646)	"TRIM(:Employer_Grouping_ID)",
Plan_Type	POSITION(647:650)	"TRIM(:Plan_Type)",
Benefit_Plan_Number	POSITION(651:680)	"TRIM(:Benefit_Plan_Number)",
Coordination_of_Benefits_flg	POSITION(735:735)	"TRIM(:Coordination_of_Benefits_flg)",
COBRA_flg	POSITION(736:736)	"TRIM(:COBRA_flg)",
COBRA_Effective_dt	POSITION(737:746) date 'MM-DD-YYYY' NULLIF COBRA_Effective_dt='          ',
COBRA_Termination_dt	POSITION(747:756) date 'MM-DD-YYYY' NULLIF COBRA_Termination_dt='          ',
Suspended_Benefit_flg	POSITION(757:757)	"TRIM(:Suspended_Benefit_flg)",
CustomerInternalMemberUniqueID	POSITION(758:787)	"TRIM(:CustomerInternalMemberUniqueID)",
Alternate_Product_Id	POSITION(867:896)	"TRIM(:Alternate_Product_Id)"
)