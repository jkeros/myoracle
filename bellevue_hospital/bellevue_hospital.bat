set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\bellevue_hospital\bellevue_hospital.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\bellevue_hospital\LOG\bellevue_hospital_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\bellevue_hospital\bellevue_hospitaldir.bat > c:\AutoMated_DataLoad_Jobs\TEST\bellevue_hospital\LOG\dir.log
