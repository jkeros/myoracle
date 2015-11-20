set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\marys\scriptcopystagingprodmarys.sql  > c:\AutoMated_DataLoad_Jobs\TEST\marys\LOG\marys.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\marys\LOG\marys.txt > c:\AutoMated_DataLoad_Jobs\TEST\marys\LOG\scriptcopystagingprodmarys_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\marys\marysdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\marys\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




