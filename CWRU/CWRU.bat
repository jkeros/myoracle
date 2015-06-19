set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\CWRU\CWRU.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\CWRU\LOG\CWRU_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\CWRU\CWRUdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\CWRU\LOG\dir.log
