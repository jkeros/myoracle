set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\ILWM\scriptcopystagingprodILWM.sql  > c:\AutoMated_DataLoad_Jobs\TEST\ILWM\LOG\ILWM.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\ILWM\LOG\ILWM.txt > c:\AutoMated_DataLoad_Jobs\TEST\ILWM\LOG\scriptcopystagingprodILWM_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\ILWM\ILWMdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\ILWM\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




