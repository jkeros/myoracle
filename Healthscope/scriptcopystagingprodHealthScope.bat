set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus julieker/hmrc$$julie1015_2@hradev_oracle @c:\AutoMated_DataLoad_Jobs\test\healthscope\scriptcopystagingprodhealthscope.sql > c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\scriptcopystagingprodhealthscope_%_my_datetime%.log
#C:\Automated_DataLoad_Jobs\Test\healthscope\biomatching.bat > c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\biomatching_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\healthscope\healthscopedir.bat > c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\dir_%_my_datetime%.out








