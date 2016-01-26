set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\oswald\scriptcopystagingprodoswald.sql  > c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\oswald.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\oswald.txt > c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\scriptcopystagingprodoswald_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\oswald\oswalddir.bat > c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




