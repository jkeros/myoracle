set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\oswald\oswald_dataload.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\oswald_dataload_%_my_datetime%.log
