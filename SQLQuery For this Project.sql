CREATE Database forbesTopAthletes

use forbesTopAthletes

#Uploading Dataset and use as Table


SELECT * FROM forbesathletesv2 


ALTER TABLE forbesathletesv2 ADD auto_id int IDENTITY(1,1)


SELECT *
FROM forbesathletesv2 
