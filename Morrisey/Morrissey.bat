set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\morrissey\morrissey.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\morrissey_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\morrissey\morrisseydir.bat > c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\dir.log
