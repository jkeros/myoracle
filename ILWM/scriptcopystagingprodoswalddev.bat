set _my_datetime=%date%_%time%


set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%


sqlplus julieker/hmrc$$julie1015@hradev_oracle @c:\AutoMated_DataLoad_Jobs\test\oswald\scriptcopystagingprodoswald.sql > c:\AutoMated_DataLoad_Jobs\TEST\oswald\LOG\scriptcopystagingprodoswald_%_my_datetime%.log








