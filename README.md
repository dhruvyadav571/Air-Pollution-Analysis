# Air-Pollution-Analysis
Data analysis of air pollution trends in European capitals using Python, SQL, and Tableau, based on WHO data
# 🌍 Air Pollution Trends in European Capitals (2010–2019)
Data analysis of air pollution trends in European capitals using Python, SQL, and Tableau, based on WHO data

## 📌 Project Overview
This project analyzes air pollution levels in European capital cities using real-world data from the WHO Ambient Air Quality Database. It explores how pollution has changed over time, identifies cities that exceed WHO limits, and compares air quality between Western and Eastern Europe.

## 🧰 Tools & Technologies
- **Python** – Data cleaning and transformation (Pandas, NumPy)
- **SQL (MySQL)** – Data extraction and trend queries
- **Tableau** – Interactive dashboards for visualization

## 📁 Dataset
- Source:  https://www.who.int/data/gho/data/themes/air-pollution/who-air-quality-database
- Indicators:
  - PM2.5 (µg/m³): Fine particulate matter
  - PM10 (µg/m³): Coarse particulate matter
  - NO₂ (µg/m³): Nitrogen Dioxide
- Period: 2010 to 2019

## 📊 Key Analyses
- **Pollution Trends** across time for each capital
- **Cleanest Capitals** (comparison)
- **Most Polluted Cities** (exceeding PM & NO₂ thresholds)
- **Effect of Environmental Laws** in cities like Paris, Berlin, London, and Stockholm
- **Comparison: Western vs Eastern Europe**

## How to Run
1. Load the CSV using Python
2. Process and upload data to MySQL
3. Run SQL queries from `SQL Queries.pdf'
4. Visualize in Tableau

## Sample Python Script
See ['python script.pdf'] for:
- Loads raw WHO Excel data using pandas.
- Filters records to keep only European countries.
- Extracts data for capital cities using a predefined dictionary.
- Sorts and cleans the dataset for SQL upload.

## Sample SQL Queries
See ['SQL Queries.pdf'] for:
- Grouping data by year and city
- Filtering cities exceeding WHO limits
- Regional comparisons (West vs East)

## 📈 Visualization
The full dashboard is available on **Tableau Public**:
👉 [View Dashboard]] https://public.tableau.com/shared/72FHH4XW2?:display_count=n&:origin=viz_share_link

## 📝 Insights
- The cities which exceeded PM2.5, PM10, and NO₂ limits in each year (2010–2019) are: London, Berlin, Paris, Warsaw, Madrid, Rome,
  Vienna, Athens, Stockholm and Copenhagen. Most of the cities display upward trend in exceeding WHO limits from the line chart.
- The cities with consistently lower pollution levels and cleanest air are: Helsinki, Tallinn, Reykjavik, Vaduz and Oslo.
- In general, eastern countries in Europe have higher pollution levels as compared to western countries. Eastern countries exceed PM limits
  because of pollution from industries and winter heating.
- Paris, Berlin, StockHolm and London are cities with strict environmental regulations and showed improvement over the years.
- In order to show latest available data, the year of 2019 was analyzed, the city of Tallinn had lowest levels of PM 2.5 and Kyiv with the
  highest.
- In terms of PM 10 levels, lowest was again of Tallinn and Sarajevo and as for NO2 levels, the lowest was of Bucharest and highest
were found in Bern.

## Author
- [Dhruv Yadav]
- GitHub: github.com
