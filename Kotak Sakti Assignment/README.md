# Data Analyst Application Question by Kotak Sakti

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

![Image](https://github.com/users/Syarmine/projects/1/assets/121959422/bf6e1e88-06b8-44be-a413-28bd1812208b)

Generated relational database named `bookstore` with 3 tables named as `customers`, `invoices` and `invoiceslines` as showed as the following:-

![Image](https://github.com/users/Syarmine/projects/1/assets/121959422/7f349c53-0103-4d4f-ae4a-90f7a7a2b9ba)
![Image](https://github.com/users/Syarmine/projects/1/assets/121959422/144d71e7-acdc-484e-9d99-c435629b5365)
![Image](https://github.com/users/Syarmine/projects/1/assets/121959422/5fd7b798-34bb-4bc9-857e-a0d1292b2b69)



![Image](https://github.com/users/Syarmine/projects/1/assets/121959422/cda44fff-3825-45cb-9ff3-5375c6674708)
![Image](https://github.com/users/Syarmine/projects/1/assets/121959422/5ebfd627-c5ac-4583-b239-40d6c1a6c8b9)
![Image](https://github.com/Syarmine/Portfolio/blob/500860354e01f49447c9af10fdf42aedb296bd78/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202d1.png)