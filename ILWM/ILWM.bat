set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\ilwm\ilwm.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\ilwm\LOG\ilwm_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\ilwm\ilwmdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\ilwm\LOG\dir.log
