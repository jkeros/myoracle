set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\morrissey\scriptcopystagingprodmorrissey.sql  > c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\morrissey.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\morrissey.txt > c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\scriptcopystagingprodmorrissey_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\morrissey\morrisseydir.bat > c:\AutoMated_DataLoad_Jobs\TEST\morrissey\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




