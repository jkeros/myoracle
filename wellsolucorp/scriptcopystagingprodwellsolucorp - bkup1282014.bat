set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus julieker/hmrc$$julie1015@hradev_oracle @c:\AutoMated_DataLoad_Jobs\test\wellsolucorp\scriptcopystagingprodwellsolucorp.sql > c:\AutoMated_DataLoad_Jobs\TEST\wellsolucorp\LOG\scriptcopystagingprodwellsolucorp_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\wellsolucorp\wellsolucorpdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\wellsolucorp\LOG\dir_%_my_datetime%.out








