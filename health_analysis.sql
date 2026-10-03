
-- Project: Diabetes Health Indicators Analysis
-- Database: SQLite
-- Purpose: Explore associations between health indicators
-- and diabetes status in the survey dataset.

-- Query 1: Total records
SELECT COUNT(*) AS total_records
FROM health_data;

-- Query 2: Diabetes group distribution
SELECT
    Diabetes_binary,
    COUNT(*) AS total_people,
    ROUND(AVG(Diabetes_binary) * 100, 2) AS percentage
FROM health_data
GROUP BY Diabetes_binary
ORDER BY Diabetes_binary;

-- Query 3: High blood pressure by diabetes status
SELECT
    Diabetes_binary,
    COUNT(*) AS total_people,
    SUM(HighBP) AS people_with_high_bp,
    ROUND(AVG(HighBP) * 100, 2) AS high_bp_percentage
FROM health_data
GROUP BY Diabetes_binary
ORDER BY Diabetes_binary;

-- Query 4: Average BMI by diabetes status
SELECT
    Diabetes_binary,
    COUNT(*) AS total_people,
    ROUND(AVG(BMI), 2) AS average_bmi
FROM health_data
GROUP BY Diabetes_binary
ORDER BY Diabetes_binary;

-- Query 5: Physical activity by diabetes status
SELECT
    Diabetes_binary,
    COUNT(*) AS total_people,
    ROUND(AVG(PhysActivity) * 100, 2)
        AS physically_active_percentage
FROM health_data
GROUP BY Diabetes_binary
ORDER BY Diabetes_binary;

-- Query 6: Diabetes percentage by age category
SELECT
    Age,
    COUNT(*) AS total_people,
    ROUND(AVG(Diabetes_binary) * 100, 2)
        AS diabetes_percentage
FROM health_data
GROUP BY Age
ORDER BY Age;

-- Query 7: General health by diabetes status
SELECT
    Diabetes_binary,
    GenHlth,
    COUNT(*) AS total_people
FROM health_data
GROUP BY Diabetes_binary, GenHlth
ORDER BY Diabetes_binary, GenHlth;
