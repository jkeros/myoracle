set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\eps\scriptcopystagingprodeps.sql  > c:\AutoMated_DataLoad_Jobs\TEST\eps\LOG\eps.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\eps\LOG\eps.txt > c:\AutoMated_DataLoad_Jobs\TEST\eps\LOG\scriptcopystagingprodeps_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\eps\epsdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\eps\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




