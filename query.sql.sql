SELECT name as Company, 
MAX (DISTINCT high) AS High,
SUBSTRING(ts, 12, 2) AS Hour
FROM project3_s3bucket
GROUP BY name, SUBSTRING(ts, 12, 2);