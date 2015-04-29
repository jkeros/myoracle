set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\wright_check\wright_check.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\wright_check\LOG\wright_check_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\wright_check\scriptcopystagingprodwrightcheck.bat  > c:\AutoMated_DataLoad_Jobs\TEST\wright_check\LOG\scriptcopystagingprodwright_check_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\wright_check\wrightcheckdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\wright_check\LOG\dir.log
