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
3. Run SQL queries from `SQL queries(1).pdf'
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
- The The city which exceeded PM2.5, PM10, and NO₂ limits in each year (2011–2019) is Bern.
- The cities which exceeded PM2.5, PM10, and NO₂ limits in the year 2019 are Amsterdam, Athens, Berlin, Bern, Bratislava, Budapest, Copenhagen, Helsinki, Lisboa, Ljubljana, London, Luxembourg, Madrid, Oslo, Paris, Prague, Riga, Roma, Sofia, Stockholm, Vilnius, Warszawa, Wien, Zagreb.
- The average air pollution (PM2.5) during 2012–2019 has been conistently declining over the years and EU capital cities have shown improvements.
- The number of cities which exceeded WHO limits in all pollutants during the years of 2013-19 are in the range of 19-26. The number of cities which exceeded WHO limits in PM 2.5 during the years of 2013-19 are in the range of 20-27.
- The cities with lower pollution levels and cleanest air as compared to others in 2019 are: Tallinn, Stockholm, Helsinki, Oslo, Sofia and Luxembourg.
- The capital cities in Western Europe have lower pollution than Eastern European capitals in 2019 in terms of PM 2.5 and PM 10 levels. The reasons are: stricter environmental regulations, more modernized industrial and transport infrastructure and usage of cleaner energy sources.
- Paris, Berlin, StockHolm and London are cities with strict environmental regulations and showed positive improvement over the years. In 2019, they had lowest air pollution levels in all 3 pollutants as compared to other years.
- In order to show latest available data, the year of 2019 was analyzed, the lowest levels of PM 2.5, PM 10 and NO2 were in city of Tallinn and highest levels of PM 2.5 were in Kyiv. In terms of PM 10 levels, the highest was of Sarajevo and as for NO2 levels it were found in Athens.

## Author
- [Dhruv Yadav]
- GitHub: github.com
