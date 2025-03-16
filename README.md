# Power BI International Quarterly Report

This is a Power BI project developed for a medium-sized international retailer seeking to elevate its business intelligence capabilities. The report focuses on delivering quarterly insights and high-level dashboards for C-suite executives, including customer segmentation, product performance, and store-level analysis.

---

## Table of Contents

1. [Project Overview](#project-overview)  
2. [Report Highlights](#report-highlights)  
3. [How to Use](#how-to-use)  
4. [Project Structure](#file-structure)  

---

## Project Overview

**Context:**  
A medium-sized international retailer wanted to harness Power BI to consolidate sales data from different regions and disparate sources. By implementing a star-based schema and robust ETL processes, this report provides:

- **High-Level Summaries** for executives  
- **Regional Sales & Top Customer** insights  
- **Product Performance** vs. Sales Targets  
- **Geospatial Analysis** of store performance

**Scope:**  
- Loaded in tables from Azure Storage, Azure SQL Database, Local CSV & Zip folders 
- Clean and transform data in Power Query  
- Create an analytical data model using a star schema  
- Develop DAX measures to enable advanced time intelligence and KPIs  
- Design a 4-page interactive Power BI report with 40+ visualisations

**Quick View**  
To get an initial view of the Report take a look at the PowerBI_Report.pdf file which has static images of the pages!

---

## Report Highlights

This Power BI report spans **4 pages** with more than **40** visualisations. All of which are available to Navigate using the Icons at the left hand side bar seen in this gif:

![Image](https://github.com/user-attachments/assets/7c104568-b0ee-4aec-9b64-18081cad8845)

### Executive Summary
- Key financial metrics (Total Revenue, Profit, Orders)  
- High-level KPIs (YoY Growth, Quarter-on-Quarter Change)

### Customers Detail
- Segmentation based on location and sales volume  
- Drilldown capabilities to explore city-level data

### Product Detail
- Ranked by category, profit margin, and comparison against sales targets  
- Interactive filters to segment by time period or store location

### Stores Map 
- Highlights geographical distribution of revenue and profit  
- Colour-coded layers to identify high/low performing stores

---

## How to Use

1. **Clone this Repository** or download the `.pbix` file directly.
2. Open the `.pbix` file in Microsoft Power BI Desktop.  
   > Note: the Version of PowerBi Desktop used was 2.140.1476.0 64-bit
3. Explore the report pages, apply filters, and interact with visuals.

---

## File Structure
```plaintext
.
├── DB_SQL_Queries                  <-- Folder containing multiple .sql and .csv files answering various business questions
├── .gitignore                      <-- Specifies files/directories for Git to ignore
├── DA_PowerBi_report.pbix          <-- Main Power BI project file containing data model, visuals, and DAX measures
├── PowerBi_Report.pdf              <-- Exported PDF version of the Power BI report
└── README.md                       <-- Primary documentation for the project
```

---





