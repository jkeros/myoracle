set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\totalcarehealth_bio\totalcarehealth.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth_bio\LOG\totalcarehealth_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\totalcarehealth_bio\totalcarehealthdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth_bio\LOG\dir.log
