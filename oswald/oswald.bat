set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\oswald\oswald.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\oswald_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\oswald\oswalddir.bat > c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\dir.log
