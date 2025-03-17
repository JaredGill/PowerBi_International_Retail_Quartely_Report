# Power BI International Quarterly Report

This is a practice Power BI project developed for a "medium-sized international retailer" seeking to elevate its business intelligence capabilities. The report focuses on delivering quarterly insights and high-level dashboards for C-suite executives, including customer segmentation, product performance, and store-level analysis.

---

## Table of Contents

1. [Project Overview](#project-overview)  
2. [Report Highlights](#report-highlights)  
3. [How to Use](#how-to-use)  
4. [File Structure](#file-structure)  

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
  > more info on Data Sources [here](https://github.com/JaredGill/PowerBi_International_Retail_Quartely_Report/wiki/Data-Sources-&-Data-Model#data-sources) 
- Clean and transform data in Power Query  
- Create an analytical data model using a star schema
  > more info on Data Model [here](https://github.com/JaredGill/PowerBi_International_Retail_Quartely_Report/wiki/Data-Sources-&-Data-Model#data-model) 
- Develop DAX measures to enable advanced time intelligence and KPIs  
- Design a 4-page interactive Power BI report with 40+ visualisations

**Quick View**  
To get an initial view of the Report take a look at the PowerBI_Report.pdf file which has static images of the pages!

**Further Breakdown**  
Take a read through the [Projects Wiki Page](https://github.com/JaredGill/PowerBi_International_Retail_Quartely_Report/wiki) for more information on how to use the report!

---

## Report Highlights

This Power BI report spans **4 pages** with more than **40** visualisations. All of which are available to Navigate using the Icons at the left hand side bar seen in this gif:

![Image](https://github.com/user-attachments/assets/7c104568-b0ee-4aec-9b64-18081cad8845)

### Executive Summary 
- Key financial metrics (Total Revenue, Profit, Orders)  
- Filter capability by previous quarters, and various categorical options
> (Check out the wiki's [Executive Summary Page](https://github.com/JaredGill/PowerBi_International_Retail_Quartely_Report/wiki/Executive-Summary-Page)  for further breakdown!

### Customers Detail
- Segmentation based on location and sales volume  
- Highlights of top customers Order and Revenue details
> (Check out the wiki's [Customers Detail Page](https://github.com/JaredGill/PowerBi_International_Retail_Quartely_Report/wiki/Customer-Detail-Page)  for further breakdown!

### Product Detail
- KPI's for quarterly orders, revenue and profit vs repesctive targets
- Interactive filters to segment by product category or store's country location
> (Check out the wiki's [Product Detail Page](https://github.com/JaredGill/PowerBi_International_Retail_Quartely_Report/wiki/Product-Detail-Page)  for further breakdown!

### Stores Map 
- Highlights geographical distribution of profit YTD by bubble size
- Drillthrough of selected stores to seperate page to highlight stores performance in more detail
> (Check out the wiki's [Stores Map Page](https://github.com/JaredGill/PowerBi_International_Retail_Quartely_Report/wiki/Stores-Map-Page)  for further breakdown!

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





