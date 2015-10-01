set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\borgess\borgess.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\borgess\LOG\borgess_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\borgess\borgessdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\borgess\LOG\dir.log
