set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\CWRU\scriptcopystagingprodCWRU.sql  > c:\AutoMated_DataLoad_Jobs\TEST\CWRU\LOG\CWRU.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\CWRU\LOG\CWRU.txt > c:\AutoMated_DataLoad_Jobs\TEST\CWRU\LOG\scriptcopystagingprodCWRU_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\CWRU\CWRUdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\CWRU\LOG\dir_%_my_datetime%.out







