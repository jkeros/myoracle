set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\eps\eps.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\eps\LOG\eps_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\eps\epsdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\eps\LOG\dir.log
