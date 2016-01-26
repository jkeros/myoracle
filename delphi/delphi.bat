set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\Delphi\delphi.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\delphi\log\delphi_%_my_datetime%.log
