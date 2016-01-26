set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\Healthscope\Healthscope.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\Healthscope\LOG\Healthscope_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\Healthscope\Healthscopedir.bat > c:\AutoMated_DataLoad_Jobs\TEST\Healthscope\LOG\dir.log
