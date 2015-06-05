set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\sandia\sandia.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\sandia\LOG\sandia_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\sandia\sandiadir.bat > c:\AutoMated_DataLoad_Jobs\TEST\sandia\LOG\dir.log
