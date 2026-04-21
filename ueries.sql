CREATE table weatherdata.late20th
WITH (
  format='PARQUET',
  external_location='s3://<your-bucket>/lab3'
) AS
SELECT date, type, observation
FROM by_year
WHERE date/10000 BETWEEN 1950 AND 2015;

CREATE VIEW TMAX AS
SELECT date, observation, type
FROM late20th
WHERE type = 'TMAX';

SELECT date/10000 as Year, avg(observation)/10 as Max
FROM tmax
GROUP BY date/10000
ORDER BY date/10000;
