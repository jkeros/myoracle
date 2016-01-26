set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\bellevue_hospital\scriptcopystagingprodbellevue_hospital.sql  > c:\AutoMated_DataLoad_Jobs\TEST\bellevue_hospital\LOG\bellevue_hospital.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\bellevue_hospital\LOG\bellevue_hospital.txt > c:\AutoMated_DataLoad_Jobs\TEST\bellevue_hospital\LOG\scriptcopystagingprodbellevue_hospital_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\bellevue_hospital\bellevue_hospitaldir.bat > c:\AutoMated_DataLoad_Jobs\TEST\bellevue_hospital\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




