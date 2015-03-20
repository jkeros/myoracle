set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus /@hra_oracle @c:\AutoMated_DataLoad_Jobs\test\morrissey\scriptcopystagingprodmorrissey.sql > c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\scriptcopystagingprodmorrissey_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\morrissey\moriseydir.bat > c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\dir_%_my_datetime%.out








