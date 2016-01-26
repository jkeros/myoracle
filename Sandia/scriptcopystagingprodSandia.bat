set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\sandia\scriptcopystagingprodsandia.sql  > c:\AutoMated_DataLoad_Jobs\TEST\sandia\LOG\sandia.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\sandia\LOG\sandia.txt > c:\AutoMated_DataLoad_Jobs\TEST\sandia\LOG\scriptcopystagingprodsandia_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\sandia\sandiadir.bat > c:\AutoMated_DataLoad_Jobs\TEST\sandia\LOG\dir_%_my_datetime%.out







