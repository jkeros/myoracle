set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


c:\AutoMated_DataLoad_Jobs\test\livehealthier\livehealthier.vbs  > c:\AutoMated_DataLoad_Jobs\TEST\livehealthier\LOG\livehealthier_%_my_datetime%.log
c:\AutoMated_DataLoad_Jobs\test\livehealthier\livehealthierdir.bat > c:\AutoMated_DataLoad_Jobs\TEST\livehealthier\LOG\dir.log
