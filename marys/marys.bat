set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\marys\marys.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\marys\LOG\marys_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\marys\marysdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\marys\LOG\dir.log
