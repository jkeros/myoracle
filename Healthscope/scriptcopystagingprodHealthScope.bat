set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hra_oracle @c:\AutoMated_DataLoad_Jobs\test\healthscope\scriptcopystagingprodhealthscope.sql  > c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\healthscope.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\healthscope.txt > c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\scriptcopystagingprodhealthscope_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\healthscope\ssn_dup.bat > c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\ssndup_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\healthscope\healthscopedir.bat > c:\AutoMated_DataLoad_Jobs\TEST\healthscope\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




