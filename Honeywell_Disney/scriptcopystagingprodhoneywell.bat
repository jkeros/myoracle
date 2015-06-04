set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@dware_oracle @c:\AutoMated_DataLoad_Jobs\test\honeywell\scriptcopystagingprodhoneywell.sql  > c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\honeywell.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\honeywell.txt > c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\scriptcopystagingprodhoneywell_%_my_datetime%.log
ECHO whenever sqlerror exit | sqlplus /@hra_oracle @c:\AutoMated_DataLoad_Jobs\test\honeywell\scriptcopystagingprodhoneywell2.sql  > c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\honeywell.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\honeywell.txt >> c:\AutoMated_DataLoad_Jobs\TEST\honeywell\LOG\scriptcopystagingprodhoneywell_%_my_datetime%.log







