set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus /@hra_oracle @c:\AutoMated_DataLoad_Jobs\test\ccc\scriptcopystagingprodccc.sql > c:\AutoMated_DataLoad_Jobs\TEST\ccc\LOG\scriptcopystagingprodccc_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\ccc\cccdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\ccc\LOG\dir_%_my_datetime%.out








