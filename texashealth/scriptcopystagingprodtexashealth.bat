set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\texashealth\scriptcopystagingprodtexashealth.sql  > c:\AutoMated_DataLoad_Jobs\TEST\texashealth\LOG\texashealth.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\texashealth\LOG\texashealth.txt > c:\AutoMated_DataLoad_Jobs\TEST\texashealth\LOG\scriptcopystagingprodtexashealth_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\texashealth\texashealthdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\texashealth\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




