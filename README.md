# Petroleum Analysis Dashboard  

This repository contains a **Power BI dashboard project** for analyzing U.S. petroleum prices across different regions, fuel grades, and formulations.  
<img width="3745" height="2350" alt="Petroleum_Dashboard-1" src="https://github.com/user-attachments/assets/d2636684-07d6-43a9-8d7c-6687d8fb79c7" />

## Project Overview  
The project follows a full data pipeline workflow:  

1. **Data Cleaning**  
   - The raw petroleum price data is stored in the [`Excel_Data`](./Excel_Data) folder.  
   - I created an SQL script, [`clean_script.sql`](./clean_script.sql), to clean and prepare the data for analysis.  

2. **Data Modeling & Visualization**  
   - The cleaned data was then imported into Power BI.  
   - I used the [`PowerBI_Data`](./PowerBI_Data) folder to format and structure the dataset for reporting.  
   - The final dashboard was built in Power BI and saved as [`Petroleum_Dashboard.pbix`](./Petroleum_Dashboard.pbix).  
   - A PDF export of the dashboard is also available: [`Petroleum_Dashboard.pdf`](./Petroleum_Dashboard.pdf).  

## Dashboard Highlights  
The Power BI dashboard provides:  
- **Average Price Trends** by region, formulation, and fuel grade.  
- **KPIs** including Max, Min, and Average petroleum prices.  
- **Interactive filters** for region, fuel type, formulation, and time range.  
- **Time series analysis** of average fuel prices throughout 2024. 

## Files in this Repository  
- `Excel_Data/` → Raw petroleum data (Excel format).  
- `PowerBI_Data/` → Data formatted for Power BI.  
- `clean_script.sql` → SQL script for cleaning raw data.  
- `Petroleum_Dashboard.pbix` → Power BI dashboard file.  
- `Petroleum_Dashboard.pdf` → Exported dashboard in PDF format.  
- `README.md` → Project documentation.  
- `test.sqbpro` → Database project file used during SQL development.  
