set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus julieker/hmrc$$julie1015_2@hradev_oracle @c:\AutoMated_DataLoad_Jobs\test\livehealthier\biomatching.sql > c:\AutoMated_DataLoad_Jobs\TEST\livehealthier\LOG\biomatching_%_my_datetime%.log









