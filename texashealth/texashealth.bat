set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\texashealth\texashealth.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\texashealth\LOG\texashealth_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\texashealth\texashealthdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\texashealth\LOG\dir.log
