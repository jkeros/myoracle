options   (skip=1)
load data
infile 'belle.csv'
badfile 'belle.bad'
discardfile 'belle.dsc'
append
into table person_bellevuehosp_raw
fields terminated by ',' optionally enclosed by '"'
trailing nullcols
(
last_name		"trim(:last_name)",
first_name    	"trim(:first_name)",
eeid    	"'BEL' || trim(:eeid)",
company         "'BEL'"
)
