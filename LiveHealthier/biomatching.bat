set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus /@hra_oracle @c:\AutoMated_DataLoad_Jobs\test\livehealthier\biomatching.sql > c:\AutoMated_DataLoad_Jobs\TEST\livehealthier\LOG\biomatching_%_my_datetime%.log
sqlplus /@hraj_oracle @c:\AutoMated_DataLoad_Jobs\test\livehealthier\biomatching-report.sql > c:\AutoMated_DataLoad_Jobs\TEST\livehealthier\LOG\biomatching-report_%_my_datetime%.log












