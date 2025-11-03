# Calculate the percentage of population with access to cultural centers
total_population_served = 2979.24  # Result from QGIS Zonal Statistics
total_city_population = 131402

accessibility_percentage = (total_population_served / total_city_population) * 100

print(f"Population with access: {total_population_served}")
print(f"Percentage of population served: {accessibility_percentage:.2f}%")
