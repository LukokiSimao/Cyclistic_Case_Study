/* Merging all data in order to have a unified database */

-- Number total of rows: 5,734,381


WITH Cyclistic AS 
(SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202406-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202405-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202404-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202403-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202402-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202401-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202312-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202311-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202310-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202309-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202308-divvy-tripdata]
UNION ALL
SELECT * FROM [Cyclistic_Bike_Share].[dbo].[202307-divvy-tripdata])

SELECT *
INTO Cyclistic_Merged
FROM Cyclistic

SELECT *
FROM Cyclistic_Merged





