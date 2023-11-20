# Data Analyst Assignment by Kotak Sakti

## Introduction
As part of the application process for the Data Analyst role at Kotak Sakti, this document addresses a series of questions and tasks designed to demonstrate my skills and understanding in key areas relevant to the position. 

The assignment involves a detailed exploration of various aspects of data analysis:
* including understanding the role of a Data Engineer
* executing SQL queries
* mplementing data ingestion and extraction processes using Python and 
* orchestrating a data pipeline for a company.

## Question 1
**Describe a Data Engineer role in an organisation and its main responsibilities**
A data engineer will often have to handle  with multiple types of data to perform many operations using many scripting or coding languages according to the preferences of the organization.

Data engineer will deals with three primary types of data: 
* Structured: usually a table-based source system i.e relational database, comma separated file.
* Semi-structured: data that requires flattening prior loading i.e JSON
* Unstructured: data stored as key-value pair or non-relational data i.e noSQL, images, PDFs

Among the key task performed by data engineer includes the following:-
* data integration: establishing link between business operation and data sources
* data transformation: data is transformed into a suitable format through _Extract, Transform and Load_ (ETL) process, or through the _extract, load and transform_(ELT) where data is ingested to a data lake and processed using big data techniques. Both ETL and ELT are to support downstream analytical needs.
* data consolidation: is a process to combined extracted data from multiple data sources into one consistent structure to support analytics and reporting - usually done using analytical stores using data lake or data warehouses

## Question 2
From the three tables in Appendix A

- a. Show schema generation query
- b. Show the SQL query for number of customers purchasing more than 5 books
- c. Show the SQL query for a list of customers who never purchased anything
- d. Show the SQL query for list of book purchased with the users
You can attempt this question in any SQL based database (SQLSRV, MYSQL, OracleDB)

![Image](https://github.com/Syarmine/Portfolio/blob/466830c563b2aabe3333f558a16f6b9873d3dca0/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202a.png)

![Image](https://github.com/Syarmine/Portfolio/blob/64d538efe31702a0dfadb2deecb6e9515a9243b3/Kotak%20Sakti%20Assignment/SQL%20Images/EER%20Diagram.png)

Generated relational database named `bookstore` with 3 tables named as `customers`, `invoices` and `invoiceslines` as showed as the following:-

![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/2a.PNG)
![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/2a1.PNG)
![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/2a2.PNG)

![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202b.png)
![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202c.png)
![Image](https://github.com/Syarmine/Portfolio/blob/500860354e01f49447c9af10fdf42aedb296bd78/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202d1.png)

## Question 3
Based on Question 2, implement all queries and the ingestion/extraction process of Appendix A in Python.You can attempt this question in your own development workspace and share GitHub repository or gist URL.

The following link redirecto Jupyter Notebook file, demonstrating the ingestion process:
[Jupyter Notebook Kotak Sakti Assignment](https://github.com/Syarmine/Portfolio/blob/e32744767eb6df2285f472cf1ce430ef9270dd8c/Kotak%20Sakti%20Assignment/Kotak%20Sakti%20Assignment-checkpoint.ipynb)

## Question 4
Megah Holdings Berhad is a diversified holding company in a few industries. Each industry has different best practices and different ERPimplementation methods.The revenue optimization team requires a dashboard which displays and analyses daily sales at the end of business day from three business units. Describe a data pipeline with the following input sources:
- a. Retail company ERP - Real time API in XML
- b. Chicken Broiler/Farm ERP - Hourly batch file generation in FTP server
- c. Trading company ERP - Manual Excel files download

1. Data ingestion
- For (a): can use Python to consume the XML data from API. As it is semi-structured dataset, Python package `ElementTree` can be used to extract and consume the dataset. The XML format then converted to JSON using `xmltodict` Python The dataset then stored into a dictionary and dataframe, that can be utilised later in the pipeline.
- For (b): The batch file generated can be ingested using Python `ftplib` and can be automated using cron job. 
- For (c): for manual file upload, using Python dataframe 
2. Data transformation and processing
- For all of the datasets, may follow a _Extract_, _Transform_ and _Load_ schema. Once extracted according to each dataset, the data is transformed to according schema, quality and business rule. In this Megah Holding, we use csv file schema for later consumption by analyst.
- This transformation can involve cleaning, aggregating, and structuring the data.
- Finally, the transformed data is loaded into the target data warehouse or storage system, often in a format optimized for reporting and analytics.
3. Data storage
- we can export the transformed, structured dataset (i.e csv) into data lake or data warehouses or databases or using cloud solutions i.e Azure Data Factory
4. Data analysis and visualisation
  - end-user or data consumers can utilised the analytical storage datasets to create dashboards for the revenue optimisation team.
  - Tools like PowerBI or Tableau can connect to data warehouse, data lake or data store that contains the multi-source datasets for visualisation.
