set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\ccc\ccc.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\ccc\LOG\ccc_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\ccc\cccdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\ccc\LOG\dir.log
