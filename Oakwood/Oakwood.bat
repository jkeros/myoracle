set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\Oakwood\Oakwood.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\Oakwood\LOG\Oakwood_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\Oakwood\Oakwooddir.bat > c:\AutoMated_DataLoad_Jobs\TEST\Oakwood\LOG\dir.log
