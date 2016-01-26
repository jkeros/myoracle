set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus julieker/hmrc$$julie1015_2@hradev_oracle @c:\AutoMated_DataLoad_Jobs\test\DuininckPrinsco\scriptcopystagingprodDuininck.sql  > c:\AutoMated_DataLoad_Jobs\TEST\DuininckPrinsco\LOG\Duininck.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\DuininckPrinsco\LOG\Duininck.txt > c:\AutoMated_DataLoad_Jobs\TEST\DuininckPrinsco\LOG\scriptcopystagingprodDuininck_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\DuininckPrinsco\Duininckdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\DuininckPrinsco\LOG\dir_%_my_datetime%.out







