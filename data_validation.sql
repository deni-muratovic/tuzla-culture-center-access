-- Create a table for the institutions
CREATE TABLE domovi_kulture (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    latitude REAL,
    longitude REAL
);

-- Query to find any potential data entry errors (nulls or zeros)
SELECT * FROM domovi_kulture
WHERE latitude IS NULL OR longitude IS NULL
   OR latitude = 0 OR longitude = 0;
