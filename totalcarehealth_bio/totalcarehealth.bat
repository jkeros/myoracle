set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\totalcarehealth\totalcarehealth.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth\LOG\totalcarehealth_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\totalcarehealth\totalcarehealthdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth\LOG\dir.log
