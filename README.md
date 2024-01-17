# Crowdfunding_ETL
# Project 2 Group 1 - Extract, Transform and Load

## Overview
This project is part of the UoB Analyses Bootcamp. As part of the project, we extracted data from provided excel files, cleaned, transformed (including splitting columns, creating and merging pandas dataframes, changing date types, etc), and saved the data. We then created a SQL database with the data created. These analyses involved using Python, Pandas, Numpy and PG admin. The authors worked collaboratively on the project. 

## Repository structure:
This repository contains:
- Jupyter notebook [ETL_Mini_Project_CFerreira_GAnyasor_EKobyaImanci.ipynb](https://github.com/catisf/Crowdfunding_ETL/blob/main/ETL_Mini_Project_CFerreira_GAnyasor_EKobyaImanci.ipynb), which contains the code to clean, transform and save the data
- Folder [sql_database](https://github.com/catisf/Crowdfunding_ETL/tree/main/sql_database) containing:
  - [png file](https://github.com/catisf/Crowdfunding_ETL/blob/main/sql_database/crowdfunding_erd.png) with the database's ERD;
  - [a sql file](https://github.com/catisf/Crowdfunding_ETL/blob/main/sql_database/crowdfunding_db_schema.sql) reflecting the database's schema
  - [the code](https://github.com/catisf/Crowdfunding_ETL/blob/main/sql_database/display_data.sql) used to display the data on PG admin, once it had been imported to each table.
- Folder [Resources](https://github.com/catisf/Crowdfunding_ETL/tree/main/Resources) containing:
    - 2 '.xlsx' files, with the original data provided
    - 4 '.csv' files, with the cleaned and transformed data.

## Set up and execution
1. Jupyter notebook:
- To run the jupyter notebook you will need to install the following packages:
   - jupyter notebook `pip install notebook`
   - pandas `pip install pandas`
   - numpy `pip install numpy`
   - json `pip install jsons`

2. SQL database:
- In order to create the database:
  - install PGAdmin
  - add a new database (e.g. named 'crowdfunding_db')
  - use the [sql_file in the sql_database folder](https://github.com/catisf/Crowdfunding_ETL/blob/main/sql_database/crowdfunding_db_schema.sql) to create the necessary tables
  - import the data using the csv files in the [resources folder](https://github.com/catisf/Crowdfunding_ETL/tree/main/Resources)

    > [!TIP]
    > Make sure you import the data in the same order that the tables were created.  
    
  - check the data has been imported correctly by running [the code](https://github.com/catisf/Crowdfunding_ETL/blob/main/sql_database/display_data.sql) in the sql_database folder.
 
 
## Authors
The following authors worked collaboratively on this project:
- [Catarina Ferreira](https://github.com/catisf)
- [Elcin Kobya Imanci](https://github.com/ELCINKOBYAIMANCI)
- [Godswill Anyasor](https://github.com/AnyasorG)
