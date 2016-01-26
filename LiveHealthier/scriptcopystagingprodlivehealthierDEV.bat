set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus julieker/hmrc$$julie1015_2@hradev_oracle @c:\AutoMated_DataLoad_Jobs\test\livehealthier\scriptcopystagingprodlivehealthier.sql > c:\AutoMated_DataLoad_Jobs\TEST\livehealthier\LOG\scriptcopystagingprodlivehealthier_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\livehealthier\livehealthierdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\livehealthier\LOG\dir_%_my_datetime%.out








