import pandas as pd

# Loading and accessing the dataset
database = "entire path, workbook name.xlsx"
x = pd.read_excel(database, sheet_name="Update 2024 (V6.1)")

# Required columns
x = x[
    ["who_region", "country_name", "city", "year", "pm25_concentration", "pm10_concentration", "no2_concentration"
     , "pm25_tempcov", "pm10_tempcov", "no2_tempcov"]]

# Filtering for European region
x= x[x["who_region"] == "4_Eur"]
x["who_region"] = x["who_region"].replace("4_Eur", "European region")

# List with capital cities
y = [
    "Minsk/BLR", "Brussels/BEL", "Wien/AUT", "Sarajevo/BIH", "Roma/ITA", "Riga/LVA", "Vilnius/LTU", "Luxembourg/LUX",
    "Monaco/MCO", "Podgorica/MNE", "Greater Amsterdam/NLD", "Skopje/MKD", "Oslo/NOR", "Warszawa/POL", "Lisboa/PRT",
    "Bucuresti/ROU", "Belgrade/SRB", "Bratislava/SVK", "Ljubljana/SVN", "Madrid/ESP", "Stockholm/SWE", "Bern/CHE",
    "Kiev/UKR", "London/GBR", "Dublin/IRL", "Reykjavik/ISL", "Athina/GRC", "Berlin/DEU", "Paris/FRA", "Tbilisi/GEO",
    "Tallinn/EST", "Helsinki Helsingfors/FIN", "Lefkosia/CYP", "Praha/CZE", "Kobenhavn/DNK", "Zagreb/HRV", "Sofia/BGR"]
x = x[x["city"].isin(y)]
# Using string operations to remove country code in city names
x["city"] = x["city"].str.split("/").str[0]

# Correcting name of cities
x["city"] = x["city"].replace({
    "Athina": "Athens",
    "Bucuresti": "Bucharest",
    "Helsinki Helsingfors": "Helsinki",
    "Kobenhavn": "Copenhagen",
    "Lefkosia": "Nicosia",
    "Lisboa": "Lisbon",
    "Praha": "Prague",
    "Roma": "Rome",
    "Warszawa": "Warsaw",
    "Wien": "Vienna"
})
x["country_name"] = x["country_name"].replace({
    "Netherlands (Kingdom of the)": "Netherlands"
})

# Filtering for 2017–2021
x = x[(x["year"] >= 2017) & (x["year"] <= 2021)]
x["year"] = x["year"].astype(int)

# All pollutants with 75 % coverage of the year
x = x[(x["pm25_tempcov"] >= 75) | (x["pm10_tempcov"] >= 75) | (x["no2_tempcov"] >= 75)]

# Round to 1 decimal place
x["pm25_concentration"] = x["pm25_concentration"].round(1)
x["pm10_concentration"] = x["pm10_concentration"].round(1)
x["no2_concentration"]  = x["no2_concentration"].round(1)

# Removing rows of all three pollutants with NAs
x = x.dropna(subset=["pm25_concentration", "pm10_concentration", "no2_concentration"], how="all")

# Saving new dataset to CSV file
z = x.copy()
z.to_csv("entire path, air_pollution.csv", index=False)

# Confirming the dataset
print(x.head())
