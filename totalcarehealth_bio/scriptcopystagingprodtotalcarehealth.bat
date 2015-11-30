set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit | sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\totalcarehealth_bio\scriptcopystagingprodtotalcarehealth.sql  > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth_bio\LOG\totalcarehealth_bio.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth_bio\LOG\totalcarehealth_bio.txt > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth_bio\LOG\scriptcopystagingprodtotalcarehealth_%_my_datetime%.log
C:\Automated_DataLoad_Jobs\Test\totalcarehealth_bio\totalcarehealthdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\totalcarehealth_bio\LOG\dir_%_my_datetime%.out


WHENEVER sqlerror exit sql.sqlcode




