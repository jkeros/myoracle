insert into  person_granville_raw 
(
RECORD_DEFINITION_TYPE              ,  
RECORD_INDICATOR                    ,  
MAINTENANCE_TYPE_CD                 ,  
MAINTENANCE_REASON_CD               ,  
MEMBER_UNIQUE_ID                    , 
MEMBER_SSN                          ,  
MEMBER_LAST_NM                      , 
MEMBER_FIRST_NM                     , 
MEMBER_MIDDLE_INITIAL               ,  
MEMBER_BIRTH_dt                    ,       
MEMBER_GENDER_CD                    ,  
MEMBER_MARITAL_STATUS               ,  
MEMBER_LANGUAGE_INDICATOR           ,  
MEMBER_EXPIRATION_dt               ,        
STUDENT_FLG                         ,  
HANDICAP_FLG                        ,  
RETIRED_FLG                         ,  
MEMBER_EMAIL_ADDRESS                , 
MEMBER_STREET_1                     , 
MEMBER_STREET_2                     , 
MEMBER_CITY                         , 
MEMBER_STATE_CD                     ,  
MEMBER_ZIP_CD                       , 
MEMBER_COUNTRY_CD                   ,  
MEMBER_HOME_PHONE                   , 
MEMBER_WORK_PHONE                   , 
MEMBER_EFFECTIVE_dt                ,       
MEMBER_TERMINATION_dt              ,        
SUBSCRIBER_UNIQUE_ID                , 
SUBSCRIBER_SSN_NUMBER               ,  
SUBSCRIBER_LAST_NM                  , 
SUBSCRIBER_FIRST_NM                 , 
SUBSCRIBER_MIDDLE_INITIAL           ,  
SUBSCRIBER_BIRTH_dt                , 
SUBSCRIBER_GENDER_CD                ,  
MEMBER_REL_TO_SUBSCRIBER            ,  
EMPLOYER_ID                         , 
EMPLOYER_GROUPING_ID                , 
PLAN_TYPE                           ,  
BENEFIT_PLAN_NUMBER                 , 
COORDINATION_OF_BENEFITS_FLG        ,  
COBRA_FLG                           ,  
COBRA_EFFECTIVE_dt                 ,         
COBRA_TERMINATION_dt               ,         
SUSPENDED_BENEFIT_FLG               ,  
CUSTOMERINTERNALMEMBERUNIQUEID      , 
ALTERNATE_PRODUCT_ID,
create_dt, 
created_by,
update_dt, 
updated_by
) 
 select 
RECORD_DEFINITION_TYPE              ,  
RECORD_INDICATOR                    ,  
MAINTENANCE_TYPE_CD                 ,  
MAINTENANCE_REASON_CD               ,  
MEMBER_UNIQUE_ID                    , 
MEMBER_SSN                          ,  
MEMBER_LAST_NM                      , 
MEMBER_FIRST_NM                     , 
MEMBER_MIDDLE_INITIAL               ,  
MEMBER_BIRTH_dt                    ,       
MEMBER_GENDER_CD                    ,  
MEMBER_MARITAL_STATUS               ,  
MEMBER_LANGUAGE_INDICATOR           ,  
MEMBER_EXPIRATION_dt               ,        
STUDENT_FLG                         ,  
HANDICAP_FLG                        ,  
RETIRED_FLG                         ,  
MEMBER_EMAIL_ADDRESS                , 
MEMBER_STREET_1                     , 
MEMBER_STREET_2                     , 
MEMBER_CITY                         , 
MEMBER_STATE_CD                     ,  
MEMBER_ZIP_CD                       , 
MEMBER_COUNTRY_CD                   ,  
MEMBER_HOME_PHONE                   , 
MEMBER_WORK_PHONE                   , 
MEMBER_EFFECTIVE_dt                ,       
MEMBER_TERMINATION_dt              ,        
SUBSCRIBER_UNIQUE_ID                , 
SUBSCRIBER_SSN_NUMBER               ,  
SUBSCRIBER_LAST_NM                  , 
SUBSCRIBER_FIRST_NM                 , 
SUBSCRIBER_MIDDLE_INITIAL           ,  
SUBSCRIBER_BIRTH_dt                , 
SUBSCRIBER_GENDER_CD                ,  
MEMBER_REL_TO_SUBSCRIBER            ,  
EMPLOYER_ID                         , 
EMPLOYER_GROUPING_ID                , 
PLAN_TYPE                           ,  
BENEFIT_PLAN_NUMBER                 , 
COORDINATION_OF_BENEFITS_FLG        ,  
COBRA_FLG                           ,  
COBRA_EFFECTIVE_dt                 ,         
COBRA_TERMINATION_dt               ,         
SUSPENDED_BENEFIT_FLG               ,  
CUSTOMERINTERNALMEMBERUNIQUEID      , 
ALTERNATE_PRODUCT_ID,
create_dt, 
created_by,
update_dt, 
updated_by
  from hmrc_loader.person_granville_raw@hmr2_oracle  where trunc(create_dt) = trunc(sysdate);
commit;

exit;






