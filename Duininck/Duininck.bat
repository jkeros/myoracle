set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\Duininck\Duininck.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\Duininck\LOG\Duininck_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\Duininck\Duininckdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\Duininck\LOG\dir.log
