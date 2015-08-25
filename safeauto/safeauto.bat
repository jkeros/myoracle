set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\safeauto\safeauto.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\safeauto\LOG\safeauto_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\safeauto\safeautodir.bat > c:\AutoMated_DataLoad_Jobs\TEST\safeauto\LOG\dir.log
