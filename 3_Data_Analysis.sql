/* # of trips per bike types */

SELECT rideable_type, member_casual, COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual

/* # of trips per month */

SELECT month_of_ride, name_month_of_ride, member_casual, COUNT(ride_id) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY month_of_ride, name_month_of_ride, member_casual
ORDER BY month_of_ride, member_casual

/* # of trips per day of week */

SELECT day_of_week, name_day_of_week, member_casual, COUNT(ride_id) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY day_of_week, name_day_of_week, member_casual
ORDER BY day_of_week, member_casual


/* # of trips per hour */

SELECT DATEPART(HOUR,[started_at]) as 'hour', member_casual, COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY DATEPART(HOUR,[started_at]), member_casual
ORDER BY DATEPART(HOUR,[started_at]), member_casual

/* # of trips per start station */

SELECT TOP 10 CAST(start_station_name as varchar(1000)) as 'start_ride_station', AVG(start_lat) as 'start_latitude', AVG(start_lng) as 'start_longitude', member_casual, COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY CAST(start_station_name as varchar(1000)), member_casual
ORDER BY COUNT (*) DESC

/* # of trips per end station */

SELECT CAST(end_station_name as varchar(1000)) as 'end_ride_station', AVG(end_lat) as 'end_latitude', AVG(end_lng) as 'end_longitude', member_casual, COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
WHERE member_casual = 'member'
GROUP BY CAST(end_station_name as varchar(1000)), member_casual
ORDER BY COUNT (*) DESC

/* Average ride lenght in minutes per month */

SELECT month_of_ride, name_month_of_ride, member_casual, AVG(ride_length_minutes) AS 'avg_ride_duration_in_minutes'
FROM Cyclistic_Merged_Cleaned
GROUP BY month_of_ride, name_month_of_ride, member_casual
ORDER BY month_of_ride, name_month_of_ride, member_casual

/* Average ride length in minutes per day of week */

SELECT day_of_week, name_day_of_week, member_casual, AVG(ride_length_minutes) AS 'avg_ride_duration_in_minutes'
FROM Cyclistic_Merged_Cleaned
GROUP BY day_of_week, name_day_of_week, member_casual
ORDER BY day_of_week, name_day_of_week, member_casual


SELECT *
FROM Cyclistic_Merged_Cleaned