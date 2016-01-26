set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%




ECHO whenever sqlerror exit |sqlplus /@hraj_oracle @C:\Automated_DataLoad_Jobs\Test\Allegiance\runit.txt > C:\Automated_DataLoad_Jobs\Test\Allegiance\log\insert_allegianceelig%_my_datetime%.log  > c:\AutoMated_DataLoad_Jobs\TEST\allegiance\LOG\allegiance.txt
IF %ERRORLEVEL% NEQ 0 exit
type c:\AutoMated_DataLoad_Jobs\TEST\Allegiance\LOG\Allegiance.txt > c:\AutoMated_DataLoad_Jobs\TEST\Allegiance\LOG\scriptcopystagingprodAllegiance_%_my_datetime%.log








