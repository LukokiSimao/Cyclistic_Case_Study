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

/* # of trips per length hour */

SELECT 
CASE
WHEN [ride_length_minutes] >= 6900 THEN 115
WHEN [ride_length_minutes] >= 6840 THEN 114
WHEN [ride_length_minutes] >= 6780 THEN 113
WHEN [ride_length_minutes] >= 6720 THEN 112
WHEN [ride_length_minutes] >= 6660 THEN 111
WHEN [ride_length_minutes] >= 6600 THEN 110
WHEN [ride_length_minutes] >= 6540 THEN 109
WHEN [ride_length_minutes] >= 6480 THEN 108
WHEN [ride_length_minutes] >= 6420 THEN 107
WHEN [ride_length_minutes] >= 6360 THEN 106
WHEN [ride_length_minutes] >= 6300 THEN 105
WHEN [ride_length_minutes] >= 6240 THEN 104
WHEN [ride_length_minutes] >= 6180 THEN 103
WHEN [ride_length_minutes] >= 6120 THEN 102
WHEN [ride_length_minutes] >= 6060 THEN 101
WHEN [ride_length_minutes] >= 6000 THEN 100
WHEN [ride_length_minutes] >= 5940 THEN 99
WHEN [ride_length_minutes] >= 5880 THEN 98
WHEN [ride_length_minutes] >= 5820 THEN 97
WHEN [ride_length_minutes] >= 5760 THEN 96
WHEN [ride_length_minutes] >= 5700 THEN 95
WHEN [ride_length_minutes] >= 5640 THEN 94
WHEN [ride_length_minutes] >= 5580 THEN 93
WHEN [ride_length_minutes] >= 5520 THEN 92
WHEN [ride_length_minutes] >= 5460 THEN 91
WHEN [ride_length_minutes] >= 5400 THEN 90
WHEN [ride_length_minutes] >= 5340 THEN 89
WHEN [ride_length_minutes] >= 5280 THEN 88
WHEN [ride_length_minutes] >= 5220 THEN 87
WHEN [ride_length_minutes] >= 5160 THEN 86
WHEN [ride_length_minutes] >= 5100 THEN 85
WHEN [ride_length_minutes] >= 5040 THEN 84
WHEN [ride_length_minutes] >= 4980 THEN 83
WHEN [ride_length_minutes] >= 4920 THEN 82
WHEN [ride_length_minutes] >= 4860 THEN 81
WHEN [ride_length_minutes] >= 4800 THEN 80
WHEN [ride_length_minutes] >= 4740 THEN 79
WHEN [ride_length_minutes] >= 4680 THEN 78
WHEN [ride_length_minutes] >= 4620 THEN 77
WHEN [ride_length_minutes] >= 4560 THEN 76
WHEN [ride_length_minutes] >= 4500 THEN 75
WHEN [ride_length_minutes] >= 4440 THEN 74
WHEN [ride_length_minutes] >= 4380 THEN 73
WHEN [ride_length_minutes] >= 4320 THEN 72
WHEN [ride_length_minutes] >= 4260 THEN 71
WHEN [ride_length_minutes] >= 4200 THEN 70
WHEN [ride_length_minutes] >= 4140 THEN 69
WHEN [ride_length_minutes] >= 4080 THEN 68
WHEN [ride_length_minutes] >= 4020 THEN 67
WHEN [ride_length_minutes] >= 3960 THEN 66
WHEN [ride_length_minutes] >= 3900 THEN 65
WHEN [ride_length_minutes] >= 3840 THEN 64
WHEN [ride_length_minutes] >= 3780 THEN 63
WHEN [ride_length_minutes] >= 3720 THEN 62
WHEN [ride_length_minutes] >= 3660 THEN 61
WHEN [ride_length_minutes] >= 3600 THEN 60
WHEN [ride_length_minutes] >= 3540 THEN 59
WHEN [ride_length_minutes] >= 3480 THEN 58
WHEN [ride_length_minutes] >= 3420 THEN 57
WHEN [ride_length_minutes] >= 3360 THEN 56
WHEN [ride_length_minutes] >= 3300 THEN 55
WHEN [ride_length_minutes] >= 3240 THEN 54
WHEN [ride_length_minutes] >= 3180 THEN 53
WHEN [ride_length_minutes] >= 3120 THEN 52
WHEN [ride_length_minutes] >= 3060 THEN 51
WHEN [ride_length_minutes] >= 3000 THEN 50
WHEN [ride_length_minutes] >= 2940 THEN 49
WHEN [ride_length_minutes] >= 2880 THEN 48
WHEN [ride_length_minutes] >= 2820 THEN 47
WHEN [ride_length_minutes] >= 2760 THEN 46
WHEN [ride_length_minutes] >= 2700 THEN 45
WHEN [ride_length_minutes] >= 2640 THEN 44
WHEN [ride_length_minutes] >= 2580 THEN 43
WHEN [ride_length_minutes] >= 2520 THEN 42
WHEN [ride_length_minutes] >= 2460 THEN 41
WHEN [ride_length_minutes] >= 2400 THEN 40
WHEN [ride_length_minutes] >= 2340 THEN 39
WHEN [ride_length_minutes] >= 2280 THEN 38
WHEN [ride_length_minutes] >= 2220 THEN 37
WHEN [ride_length_minutes] >= 2160 THEN 36
WHEN [ride_length_minutes] >= 2100 THEN 35
WHEN [ride_length_minutes] >= 2040 THEN 34
WHEN [ride_length_minutes] >= 1980 THEN 33
WHEN [ride_length_minutes] >= 1920 THEN 32
WHEN [ride_length_minutes] >= 1860 THEN 31
WHEN [ride_length_minutes] >= 1800 THEN 30
WHEN [ride_length_minutes] >= 1740 THEN 29
WHEN [ride_length_minutes] >= 1680 THEN 28
WHEN [ride_length_minutes] >= 1620 THEN 27
WHEN [ride_length_minutes] >= 1560 THEN 26
WHEN [ride_length_minutes] >= 1500 THEN 25
WHEN [ride_length_minutes] >= 1440 THEN 24
WHEN [ride_length_minutes] >= 1380 THEN 23
WHEN [ride_length_minutes] >= 1320 THEN 22
WHEN [ride_length_minutes] >= 1260 THEN 21
WHEN [ride_length_minutes] >= 1200 THEN 20
WHEN [ride_length_minutes] >= 1140 THEN 19
WHEN [ride_length_minutes] >= 1080 THEN 18
WHEN [ride_length_minutes] >= 1020 THEN 17
WHEN [ride_length_minutes] >= 960 THEN 16
WHEN [ride_length_minutes] >= 900 THEN 15
WHEN [ride_length_minutes] >= 840 THEN 14
WHEN [ride_length_minutes] >= 780 THEN 13
WHEN [ride_length_minutes] >= 720 THEN 12
WHEN [ride_length_minutes] >= 660 THEN 11
WHEN [ride_length_minutes] >= 600 THEN 10
WHEN [ride_length_minutes] >= 540 THEN 9
WHEN [ride_length_minutes] >= 480 THEN 8
WHEN [ride_length_minutes] >= 420 THEN 7
WHEN [ride_length_minutes] >= 360 THEN 6
WHEN [ride_length_minutes] >= 300 THEN 5
WHEN [ride_length_minutes] >= 240 THEN 4
WHEN [ride_length_minutes] >= 180 THEN 3
WHEN [ride_length_minutes] >= 120 THEN 2
WHEN [ride_length_minutes] >= 60 THEN 1
WHEN [ride_length_minutes] >= 0 THEN 0
END as 'ride_length_hours',
member_casual,
COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY
CASE
WHEN [ride_length_minutes] >= 6900 THEN 115
WHEN [ride_length_minutes] >= 6840 THEN 114
WHEN [ride_length_minutes] >= 6780 THEN 113
WHEN [ride_length_minutes] >= 6720 THEN 112
WHEN [ride_length_minutes] >= 6660 THEN 111
WHEN [ride_length_minutes] >= 6600 THEN 110
WHEN [ride_length_minutes] >= 6540 THEN 109
WHEN [ride_length_minutes] >= 6480 THEN 108
WHEN [ride_length_minutes] >= 6420 THEN 107
WHEN [ride_length_minutes] >= 6360 THEN 106
WHEN [ride_length_minutes] >= 6300 THEN 105
WHEN [ride_length_minutes] >= 6240 THEN 104
WHEN [ride_length_minutes] >= 6180 THEN 103
WHEN [ride_length_minutes] >= 6120 THEN 102
WHEN [ride_length_minutes] >= 6060 THEN 101
WHEN [ride_length_minutes] >= 6000 THEN 100
WHEN [ride_length_minutes] >= 5940 THEN 99
WHEN [ride_length_minutes] >= 5880 THEN 98
WHEN [ride_length_minutes] >= 5820 THEN 97
WHEN [ride_length_minutes] >= 5760 THEN 96
WHEN [ride_length_minutes] >= 5700 THEN 95
WHEN [ride_length_minutes] >= 5640 THEN 94
WHEN [ride_length_minutes] >= 5580 THEN 93
WHEN [ride_length_minutes] >= 5520 THEN 92
WHEN [ride_length_minutes] >= 5460 THEN 91
WHEN [ride_length_minutes] >= 5400 THEN 90
WHEN [ride_length_minutes] >= 5340 THEN 89
WHEN [ride_length_minutes] >= 5280 THEN 88
WHEN [ride_length_minutes] >= 5220 THEN 87
WHEN [ride_length_minutes] >= 5160 THEN 86
WHEN [ride_length_minutes] >= 5100 THEN 85
WHEN [ride_length_minutes] >= 5040 THEN 84
WHEN [ride_length_minutes] >= 4980 THEN 83
WHEN [ride_length_minutes] >= 4920 THEN 82
WHEN [ride_length_minutes] >= 4860 THEN 81
WHEN [ride_length_minutes] >= 4800 THEN 80
WHEN [ride_length_minutes] >= 4740 THEN 79
WHEN [ride_length_minutes] >= 4680 THEN 78
WHEN [ride_length_minutes] >= 4620 THEN 77
WHEN [ride_length_minutes] >= 4560 THEN 76
WHEN [ride_length_minutes] >= 4500 THEN 75
WHEN [ride_length_minutes] >= 4440 THEN 74
WHEN [ride_length_minutes] >= 4380 THEN 73
WHEN [ride_length_minutes] >= 4320 THEN 72
WHEN [ride_length_minutes] >= 4260 THEN 71
WHEN [ride_length_minutes] >= 4200 THEN 70
WHEN [ride_length_minutes] >= 4140 THEN 69
WHEN [ride_length_minutes] >= 4080 THEN 68
WHEN [ride_length_minutes] >= 4020 THEN 67
WHEN [ride_length_minutes] >= 3960 THEN 66
WHEN [ride_length_minutes] >= 3900 THEN 65
WHEN [ride_length_minutes] >= 3840 THEN 64
WHEN [ride_length_minutes] >= 3780 THEN 63
WHEN [ride_length_minutes] >= 3720 THEN 62
WHEN [ride_length_minutes] >= 3660 THEN 61
WHEN [ride_length_minutes] >= 3600 THEN 60
WHEN [ride_length_minutes] >= 3540 THEN 59
WHEN [ride_length_minutes] >= 3480 THEN 58
WHEN [ride_length_minutes] >= 3420 THEN 57
WHEN [ride_length_minutes] >= 3360 THEN 56
WHEN [ride_length_minutes] >= 3300 THEN 55
WHEN [ride_length_minutes] >= 3240 THEN 54
WHEN [ride_length_minutes] >= 3180 THEN 53
WHEN [ride_length_minutes] >= 3120 THEN 52
WHEN [ride_length_minutes] >= 3060 THEN 51
WHEN [ride_length_minutes] >= 3000 THEN 50
WHEN [ride_length_minutes] >= 2940 THEN 49
WHEN [ride_length_minutes] >= 2880 THEN 48
WHEN [ride_length_minutes] >= 2820 THEN 47
WHEN [ride_length_minutes] >= 2760 THEN 46
WHEN [ride_length_minutes] >= 2700 THEN 45
WHEN [ride_length_minutes] >= 2640 THEN 44
WHEN [ride_length_minutes] >= 2580 THEN 43
WHEN [ride_length_minutes] >= 2520 THEN 42
WHEN [ride_length_minutes] >= 2460 THEN 41
WHEN [ride_length_minutes] >= 2400 THEN 40
WHEN [ride_length_minutes] >= 2340 THEN 39
WHEN [ride_length_minutes] >= 2280 THEN 38
WHEN [ride_length_minutes] >= 2220 THEN 37
WHEN [ride_length_minutes] >= 2160 THEN 36
WHEN [ride_length_minutes] >= 2100 THEN 35
WHEN [ride_length_minutes] >= 2040 THEN 34
WHEN [ride_length_minutes] >= 1980 THEN 33
WHEN [ride_length_minutes] >= 1920 THEN 32
WHEN [ride_length_minutes] >= 1860 THEN 31
WHEN [ride_length_minutes] >= 1800 THEN 30
WHEN [ride_length_minutes] >= 1740 THEN 29
WHEN [ride_length_minutes] >= 1680 THEN 28
WHEN [ride_length_minutes] >= 1620 THEN 27
WHEN [ride_length_minutes] >= 1560 THEN 26
WHEN [ride_length_minutes] >= 1500 THEN 25
WHEN [ride_length_minutes] >= 1440 THEN 24
WHEN [ride_length_minutes] >= 1380 THEN 23
WHEN [ride_length_minutes] >= 1320 THEN 22
WHEN [ride_length_minutes] >= 1260 THEN 21
WHEN [ride_length_minutes] >= 1200 THEN 20
WHEN [ride_length_minutes] >= 1140 THEN 19
WHEN [ride_length_minutes] >= 1080 THEN 18
WHEN [ride_length_minutes] >= 1020 THEN 17
WHEN [ride_length_minutes] >= 960 THEN 16
WHEN [ride_length_minutes] >= 900 THEN 15
WHEN [ride_length_minutes] >= 840 THEN 14
WHEN [ride_length_minutes] >= 780 THEN 13
WHEN [ride_length_minutes] >= 720 THEN 12
WHEN [ride_length_minutes] >= 660 THEN 11
WHEN [ride_length_minutes] >= 600 THEN 10
WHEN [ride_length_minutes] >= 540 THEN 9
WHEN [ride_length_minutes] >= 480 THEN 8
WHEN [ride_length_minutes] >= 420 THEN 7
WHEN [ride_length_minutes] >= 360 THEN 6
WHEN [ride_length_minutes] >= 300 THEN 5
WHEN [ride_length_minutes] >= 240 THEN 4
WHEN [ride_length_minutes] >= 180 THEN 3
WHEN [ride_length_minutes] >= 120 THEN 2
WHEN [ride_length_minutes] >= 60 THEN 1
WHEN [ride_length_minutes] >= 0 THEN 0
END,
member_casual
ORDER BY ride_length_hours, member_casual

/* # of trips per hour */

SELECT DATEPART(HOUR,[started_at]) as 'hour', member_casual, COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY DATEPART(HOUR,[started_at]), member_casual
ORDER BY DATEPART(HOUR,[started_at]), member_casual

/* # of trips per start station */

SELECT TOP 10 CAST(start_station_name as varchar(1000)) as 'start_ride_station', AVG(start_lat) as 'start_latitude', AVG(start_lng) as 'start_longitude', member_casual, COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY CAST(start_station_name as varchar(1000)), member_casual
ORDER BY CAST(start_station_name as varchar(1000)), member_casual

/* # of trips per end station */

SELECT CAST(end_station_name as varchar(1000)) as 'end_ride_station', AVG(end_lat) as 'end_latitude', AVG(end_lng) as 'end_longitude', member_casual, COUNT(*) AS total_trips
FROM Cyclistic_Merged_Cleaned
GROUP BY CAST(end_station_name as varchar(1000)), member_casual
ORDER BY CAST(end_station_name as varchar(1000)), member_casual

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