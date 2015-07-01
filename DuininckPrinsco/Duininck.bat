set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\DuininckPrinsco\Duininck.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\DuininckPrinsco\LOG\Duininck_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\DuininckPrinsco\Duininckdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\DuininckPrinsco\LOG\dir.log
