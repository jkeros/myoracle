set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus julieker/hmrc$$julie1015_2@hradev_oracle @c:\AutoMated_DataLoad_Jobs\test\safeauto\scriptcopystagingprodsafeauto.sql  > c:\AutoMated_DataLoad_Jobs\TEST\safeauto\LOG\safeauto.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\safeauto\LOG\safeauto.txt > c:\AutoMated_DataLoad_Jobs\TEST\safeauto\LOG\scriptcopystagingprodsafeauto_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\safeauto\safeautodir.bat > c:\AutoMated_DataLoad_Jobs\TEST\safeauto\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




