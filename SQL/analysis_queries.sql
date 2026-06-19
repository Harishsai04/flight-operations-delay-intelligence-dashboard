-- Total Flights
SELECT COUNT(*) AS total_flights
FROM flights;

-- Total Airlines
SELECT COUNT(*) AS total_airlines
FROM airlines;

-- Total Airports
SELECT COUNT(*) AS total_airports
FROM airports;

-- Total Delay Records
SELECT COUNT(*) AS total_delay_records
FROM delay_details;

-- Average Delay
SELECT AVG(total_delay_min) AS average_delay
FROM delay_details;

-- Delay Cause Distribution
SELECT primary_cause,
       COUNT(*) AS delay_count
FROM delay_details
GROUP BY primary_cause
ORDER BY delay_count DESC;

-- Top Airlines by On-Time Performance
SELECT airline_name,
       avg_on_time_rate_pct
FROM airlines
ORDER BY avg_on_time_rate_pct DESC;

-- Worst Airlines by On-Time Performance
SELECT airline_name,
       avg_on_time_rate_pct
FROM airlines
ORDER BY avg_on_time_rate_pct ASC;

-- Airport Capacity Utilization
SELECT airport_code,
       capacity_utilization_pct
FROM airport_operations
ORDER BY capacity_utilization_pct DESC;

-- Weather Risk Ranking
SELECT condition,
       AVG(delay_risk_score) AS avg_risk_score
FROM weather_conditions
GROUP BY condition
ORDER BY avg_risk_score DESC;
