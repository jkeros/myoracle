set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\honeywell\honeywell.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\honeywell_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\honeywell\honeywelldir.bat > c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\dir.log
