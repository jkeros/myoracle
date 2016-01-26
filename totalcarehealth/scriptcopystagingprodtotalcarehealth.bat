set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\totalcarehealth\scriptcopystagingprodtotalcarehealth.sql  > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth\LOG\totalcarehealth.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth\LOG\totalcarehealth.txt > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth\LOG\scriptcopystagingprodtotalcarehealth_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\totalcarehealth\totalcarehealthdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




