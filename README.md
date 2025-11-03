# tuzla-culture-center-access

# Spatial Equity Analysis of Culture Centers in Tuzla, Bosnia & Herzegovina

## Project Overview
This project analyzes the walking accessibility of *domovi kulture* (public culture centers) in Tuzla, Bosnia and Herzegovina. The analysis identifies spatial inequities by calculating what percentage of the population lives within an 800m walk of these institutions. This is a supplement to my 2024 Master's thesis for the 4CITIES Erasmus Mundus Joint Master's Degree program.

**Key Finding:** Only **~2.3%** of the city's population has walking access to a cultural center, highlighting a significant urban equity gap.

## Methodology
1.  **Data Acquisition:** Culture center locations were digitized manually. The pedestrian network was extracted from OpenStreetMap. Population data came from WorldPop (2025 estimates).
2.  **Geospatial Processing:** Conducted a Network Analysis in QGIS to create 800m pedestrian service areas from each center.
3.  **Data Analysis:** Used Zonal Statistics to calculate the total population residing within the combined service areas.
4.  **Automation:** Wrote Python and SQL scripts to automate calculations and data validation.

## Code & Automation

### Python
# Calculate the percentage of population with access to cultural centers
total_population_served = 2979.24  # Result from QGIS Zonal Statistics
total_city_population = 131402

accessibility_percentage = (total_population_served / total_city_population) * 100

print(f"Population with access: {total_population_served}")
print(f"Percentage of population served: {accessibility_percentage:.2f}%")


###SQL
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
