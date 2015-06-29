set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\Duininck\scriptcopystagingprodDuininck.sql  > c:\AutoMated_DataLoad_Jobs\TEST\Duininck\LOG\Duininck.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\Duininck\LOG\Duininck.txt > c:\AutoMated_DataLoad_Jobs\TEST\Duininck\LOG\scriptcopystagingprodDuininck_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\Duininck\Duininckdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\Duininck\LOG\dir_%_my_datetime%.out







