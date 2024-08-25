/*Creating a table for cleaning*/

-- Number total of rows: 5,734,381

SELECT *
INTO Cyclistic_Merged_Cleaned
FROM Cyclistic_Merged

/* Validating data type of all columns */

SELECT column_name, data_type
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name = 'Cyclistic_Merged_Cleaned'

/* Validating duplicated rows */

-- We don't have entire duplicated rows although repeated 211 ride_id can be found

SELECT DISTINCT [ride_id]
FROM Cyclistic_Merged_Cleaned

WITH RowNumber AS (
SELECT *
	  ,ROW_NUMBER () OVER (PARTITION BY
	   [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
	  ORDER BY [ride_id]) as 'duplicated_criteria'
FROM Cyclistic_Merged_Cleaned)

SELECT *
FROM RowNumber
WHERE 'duplicated_criteria' > '1'

/* Validating Null Values */

-- 1,460,034 rows with NULL values in total
--start_station_name (933,003 rows)
--start_station_id (933,003 rows)
--end_station_name (980,556 rows)
--end_station_id (980,556 rows)
--end_lat (7,919 rows)
--end_lng (7,920 rows)

SELECT *
FROM Cyclistic_Merged_Cleaned
WHERE [ride_id] IS NULL
      OR [rideable_type] IS NULL
      OR [started_at] IS NULL
      OR [ended_at] IS NULL
      OR [start_station_name] IS NULL
      OR [start_station_id] IS NULL
      OR [end_station_name] IS NULL
      OR [end_station_id] IS NULL
      OR [start_lat] IS NULL
      OR [start_lng] IS NULL
      OR [end_lat] IS NULL
      OR [end_lng] IS NULL
      OR [member_casual] IS NULL

/* Deleting NULL Values */

-- 1,460,034 rows removed remaining 4,274,347 rows

DELETE 
FROM Cyclistic_Merged_Cleaned
WHERE [ride_id] IS NULL
      OR [rideable_type] IS NULL
      OR [started_at] IS NULL
      OR [ended_at] IS NULL
      OR [start_station_name] IS NULL
      OR [start_station_id] IS NULL
      OR [end_station_name] IS NULL
      OR [end_station_id] IS NULL
      OR [start_lat] IS NULL
      OR [start_lng] IS NULL
      OR [end_lat] IS NULL
      OR [end_lng] IS NULL
      OR [member_casual] IS NULL

/* Standardizing Values */

ALTER TABLE Cyclistic_Merged_Cleaned
ADD [day_of_week] INT

ALTER TABLE Cyclistic_Merged_Cleaned
ADD [month_of_ride] INT

ALTER TABLE Cyclistic_Merged_Cleaned
ADD [year_of_ride] INT


UPDATE Cyclistic_Merged_Cleaned
SET [day_of_week] = DATEPART(DW,[started_at])

UPDATE Cyclistic_Merged_Cleaned
SET [month_of_ride] = DATEPART(month,[started_at])

UPDATE Cyclistic_Merged_Cleaned
SET [year_of_ride] = DATEPART(year,[started_at])

SELECT *,
name_day_of_week = CASE [day_of_week]
WHEN 1 THEN 'Sunday'
WHEN 2 THEN 'Monday'
WHEN 3 THEN 'Tuesday'
WHEN 4 THEN 'Wednesday'
WHEN 5 THEN 'Thursday'
WHEN 6 THEN 'Friday'
WHEN 7 THEN 'Saturday'
END,
name_month_of_ride = CASE month_of_ride
WHEN 1 THEN 'January'
WHEN 2 THEN 'February'
WHEN 3 THEN 'March'
WHEN 4 THEN 'April'
WHEN 5 THEN 'May'
WHEN 6 THEN 'June'
WHEN 7 THEN 'July'
WHEN 8 THEN 'August'
WHEN 9 THEN 'September'
WHEN 10 THEN 'October'
WHEN 11 THEN 'November'
WHEN 12 THEN 'December'
END,
CASE
WHEN DATEDIFF(minute,[started_at],[ended_at]) > 0 THEN DATEDIFF(minute,[started_at],[ended_at])
ELSE 0 END as 'ride_length_minutes'
FROM Cyclistic_Merged_Cleaned



