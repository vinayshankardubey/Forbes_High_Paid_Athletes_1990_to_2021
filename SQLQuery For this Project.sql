CREATE Database forbesTopAthletes

use forbesTopAthletes

#Uploading Dataset and use as Table


SELECT * FROM forbesathletesv2 ORDER BY auto_id DESC


ALTER TABLE forbesathletesv2 ADD auto_id int IDENTITY(1,1)


SELECT *
FROM (SELECT *,RANK() OVER (Partition By Year Order BY auto_id DESC) AS r FROM forbesathletesv2) as f
Where f.r <= 10


SELECt * INTO topforbes_athletes FROM (SELECT *,RANK() OVER (Partition By Year Order BY auto_id DESC) AS r FROM forbesathletesv2) as f
Where f.r <= 10

SELECT * FROM topforbes_athletes