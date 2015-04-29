set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\wright_check\scriptcopystagingprodwrightcheck.sql  > c:\AutoMated_DataLoad_Jobs\TEST\wright_check\LOG\wright_check.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\wright_check\LOG\wright_check.txt > c:\AutoMated_DataLoad_Jobs\TEST\wright_check\LOG\scriptcopystagingprodwright_check_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\wright_check\wrightcheckdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\wright_check\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




