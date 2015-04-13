set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\wellsolucorp\wellsolucorp.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\wellsolucorp\LOG\wellsolucorp_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\wellsolucorp\scriptcopystagingprodwellsolucorp.bat  > c:\AutoMated_DataLoad_Jobs\TEST\wellsolucorp\LOG\scriptcopystagingprodwellsolucorp_%_my_datetime%.log

