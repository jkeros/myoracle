set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


C:\Automated_DataLoad_Jobs\Test\Allegiance\openexcel.vbs
C:\Automated_DataLoad_Jobs\Test\Allegiance\openexcellbio.vbs
sqlplus /@hraj_oracle @C:\Automated_DataLoad_Jobs\Test\Allegiance\runit.txt > C:\Automated_DataLoad_Jobs\Test\Allegiance\log\insert_allegianceelig%_my_datetime%.log
