dir /o-d Z:\morrissey\"Processed by Automated download"\ > S:\"Automated Data Load Files"\Morrisey\FilesLoaded.txt
sqlplus /@hraj_oracle @C:\Automated_DataLoad_Jobs\Test\morrissey\spouse_same_id.sql 
copy C:\Automated_DataLoad_Jobs\Test\morrissey\spouse_same_id.txt s:\"Automated Data Load Files"\Morrisey\